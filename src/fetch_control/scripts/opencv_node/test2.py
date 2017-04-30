#!/usr/bin/env python
from __future__ import print_function

import roslib
import sys
import rospy
import cv2

from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

from scipy.spatial import distance as dist

from fetch_com=ntrol.srv import *

import numpy as np

from hsv_thresh import *

topic = '/head_camera/rgb/image_raw'


image_global = None

class CVServer(object):

    def __init__(self):
        self.pub = rospy.Publisher('opencv_server', String, queue_size=10)
        self.rate = rospy.Rate(10)

        print('-' * 100)
        print('Opened CVServer')
        print('-' * 100)

    def publish_msg(self, send_str):
        self.pub.publish(send_str)
        self.rate.sleep()



class image_converter:

    def __init__(self):
        print('publisher')
        self.image_pub = rospy.Publisher('image_topic_2',Image)
        print('bridge')
        self.bridge = CvBridge()
        print('subscriber')
        self.image_sub = rospy.Subscriber(topic,Image,self.callback)

    def callback(self,data):
        try:
            try:
                cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
            except CvBridgeError as e:
                print(e)
            (rows,cols,channels) = cv_image.shape

            #cv_image = square(cv_image)
            #cv2.imshow("Image window", cv_image)

            image_global = cv_image

            find_label(cv_image)
            cv2.waitKey(3)

            try:
                self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
            except CvBridgeError as e:
                print(e)
        except Exception as e:
            print('DIED')
            print(e)




def square(image):

    # Color segmentation
    HSVThresh().hsv_trackbar()
    mask = HSVThresh().hsv_thresh(image)

    ret, thresh = cv2.threshold(mask, 75, 255, 0)

    cv2.imshow('thresh', thresh)
    # end of color segmentation

    img_gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    edges = cv2.Canny(thresh, 10, 20, 3)
    cv2.dilate(edges, edges)

    cv2.imshow("canny", edges)

    im2, contours, hierarchy = cv2.findContours(edges, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)



    #cv2.drawContours(image, contours, -1, (0, 255, 0), 3)

    for cont in contours:
        approx = cv2.approxPolyDP(cont, cv2.arcLength(cont, True) * 0.02, True)
        print(cv2.contourArea(approx))
        if len(approx) == 4 and cv2.contourArea(approx) > 1000 and cv2.contourArea(approx) < 6000:

        #if len(approx) > 4:
            cv2.drawContours(image, approx, -1, (0, 255, 0), 3)

            print(cv2.contourArea(approx))


            corner_list = []
            for i in range(0, 4):
                corner_list.append([approx[i, 0, 0], approx[i, 0, 1]])


            #cv2.line(image, (corner_list[0][0], corner_list[0][1]), (corner_list[1][0], corner_list[1][1]), (0, 255, 0), 5)

            approx = np.array([approx[0, 0], approx[1, 0], approx[2, 0], approx[3, 0]])
            rect = order_points(approx)
            (tl, tr, br, bl) = rect

            widthA = np.sqrt(((br[0] - bl[0]) ** 2) + ((br[1] - bl[1]) ** 2))
            widthB = np.sqrt(((tr[0] - tl[0]) ** 2) + ((tr[1] - tl[1]) ** 2))
            maxWidth = max(int(widthA), int(widthB))

            heightA = np.sqrt(((tr[0] - br[0]) ** 2) + ((tr[1] - br[1]) ** 2))
            heightB = np.sqrt(((tl[0] - bl[0]) ** 2) + ((tl[1] - bl[1]) ** 2))
            maxHeight = max(int(heightA), int(heightB))
            dst = np.array([
                        [0, 0],
                    [maxWidth - 1, 0],
                    [maxWidth - 1, maxHeight - 1],
                    [0, maxHeight - 1]], dtype = "float32")


            # dst = np.array([[0,0], [5, 0], [0, 5], [5, 5]], np.float32)

            M = cv2.getPerspectiveTransform(rect, dst)
            warped = cv2.warpPerspective(image, M, (maxWidth, maxHeight))

            cv2.imshow('warped', warped)


            """
            sorted(corner_list, key=lambda k: [k[0], k[1]])

            print(corner_list[0], corner_list[1], corner_list[2], corner_list[3])

            corner_list = np.array([corner_list[0], corner_list[1], corner_list[2], corner_list[3]])
            print(corner_list)
            """
            """
            dst = np.array([[0,0], [5, 0], [0, 5], [5, 5]])

            warp = cv2.getPerspectiveTransform(sorted_corners, dst)

            warped_image = cv2.warpPerspective(image, warp, (5, 5))

            cv2.imshow("warp", warped_image)
            """

    return image





def find_label(image):
    mask = HSVThresh().hsv_thresh_green(image)
    cv2.imshow('thresh', mask)
    im2, contours, hierarchy = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

    cv2.drawContours(image, contours, -1, (0, 255, 0), 3)


    cv2.imshow('contours', image)


    list_points = []
    # print('cont:', len(contours))

    if len(contours) != 4:
        return

    for contour in contours:
        M = cv2.moments(contour)
        cx = int(M['m10']/M['m00'])
        cy = int(M['m01']/M['m00'])
        cv2.circle(image,(cx,cy), 2, (0,0,255), -1)

        list_points.append([cx, cy])

    cv2.imshow('locations', image)

    ordered = order_points(np.array(list_points))


    warp_image(image, ordered)




def warp_image(image, ordered):
    (tl, tr, br, bl) = ordered

    widthA = np.sqrt(((br[0] - bl[0]) ** 2) + ((br[1] - bl[1]) ** 2))
    widthB = np.sqrt(((tr[0] - tl[0]) ** 2) + ((tr[1] - tl[1]) ** 2))
    maxWidth = max(int(widthA), int(widthB))

    heightA = np.sqrt(((tr[0] - br[0]) ** 2) + ((tr[1] - br[1]) ** 2))
    heightB = np.sqrt(((tl[0] - bl[0]) ** 2) + ((tl[1] - bl[1]) ** 2))
    maxHeight = max(int(heightA), int(heightB))
    dst = np.array([
                [0, 0],
            [maxWidth - 1, 0],
            [maxWidth - 1, maxHeight - 1],
            [0, maxHeight - 1]], dtype = "float32")


    # dst = np.array([[0,0], [5, 0], [0, 5], [5, 5]], np.float32)

    M = cv2.getPerspectiveTransform(ordered, dst)
    warped = cv2.warpPerspective(image, M, (maxWidth, maxHeight))

    cv2.imshow('warped', warped)








def order_points(pts):

    xSorted = pts[np.argsort(pts[:, 0]), :]

    leftMost = xSorted[:2, :]
    rightMost = xSorted[2:, :]

    leftMost = leftMost[np.argsort(leftMost[:, 1]), :]
    (tl, bl) = leftMost

    D = dist.cdist(tl[np.newaxis], rightMost, "euclidean")[0]
    (br, tr) = rightMost[np.argsort(D)[::-1], :]


    # print('tl {}; bl {}; br {}; tr {}'.format(tl, bl, br, tr))


    return np.array([tl, bl, br, tr], np.float32)



def can_see_cube(req):
    return CanSeeCubeOpencv()







def main(args):
    ic = image_converter()
    rospy.init_node('image_converter', anonymous=True)

    cv_server = CVServer()


    try:
        #rospy.spin()
        while True:
            cv_server.publish_msg('aaaaaa')
    except KeyboardInterrupt:
        print("Shutting down")
    except Exception as e:
        print('DIED')
        print(e)
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
