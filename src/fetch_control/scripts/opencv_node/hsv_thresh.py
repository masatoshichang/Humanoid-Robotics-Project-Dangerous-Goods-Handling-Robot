import cv2
import numpy as np

def hsv_trackbar():
    cv2.namedWindow('hsv', cv2.WINDOW_NORMAL)
    cv2.createTrackbar('H_l', 'hsv', 0, 255, lambda x: None)
    cv2.createTrackbar('S_l', 'hsv', 0, 255, lambda x: None)
    cv2.createTrackbar('V_l', 'hsv', 0, 255, lambda x: None)

    cv2.createTrackbar('H_h', 'hsv', 0, 255, lambda x: None)
    cv2.createTrackbar('S_h', 'hsv', 0, 255, lambda x: None)
    cv2.createTrackbar('V_h', 'hsv', 0, 255, lambda x: None)

def hsv_thresh(image):
    hl = cv2.getTrackbarPos('H_l', 'hsv')
    sl = cv2.getTrackbarPos('S_l', 'hsv')
    vl = cv2.getTrackbarPos('V_l', 'hsv')

    hh = cv2.getTrackbarPos('H_h', 'hsv')
    sh = cv2.getTrackbarPos('S_h', 'hsv')
    vh = cv2.getTrackbarPos('V_h', 'hsv')

    lower = np.array([hl, sl, vl], np.uint8)
    upper = np.array([hh, sh, vh], np.uint8)

    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

    """
    lower = np.array([1, 0, 20])
    upper = np.array([100, 250, 200])
    """

    mask = cv2.inRange(hsv, lower, upper)

    return mask
