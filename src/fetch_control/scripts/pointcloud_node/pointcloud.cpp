#include "ros/ros.h"
//#include <ros/ros.h>
#include <iostream>


#include <pcl/visualization/cloud_viewer.h>
#include <iostream>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>

#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>

#include <boost/thread/thread.hpp>
#include <pcl/common/common_headers.h>
#include <pcl/features/normal_3d.h>
#include <pcl/io/pcd_io.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/console/parse.h>



#include <pcl/PCLPointCloud2.h>
#include "std_msgs/String.h"

#include "rgb_to_hsv.hpp"



//http://wiki.ros.org/pcl/Tutorials
using namespace std;

ros::Publisher pub;
pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");


void cloud_cb (const sensor_msgs::PointCloud2ConstPtr& input)
{
    pcl::PointCloud<pcl::PointXYZRGB> cloud2;

    pcl::fromROSMsg (*input, cloud2);
    //pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(cloud2);

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud = cloud2.makeShared();

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudFiltered(new pcl::PointCloud<pcl::PointXYZRGB>);

    pcl::CentroidPoint<pcl::PointXYZ> centroid;
    
    for (pcl::PointCloud<pcl::PointXYZRGB>::iterator it = cloud->begin(); it != cloud->end(); it++)
    {
        rgb rgbValue;
        rgbValue.r = (double)it->r;
        rgbValue.g = (double)it->g;
        rgbValue.b = (double)it->b;

        hsv hsvValue = rgb2hsv(rgbValue);

        if(hsvValue.h >= 193 && hsvValue.h < 260)
        {
          pcl::PointXYZRGB p;
          p.x = it->x;
          p.y = it->y;
          p.z = it->z;

          p.r = it->r;
          p.g = it->g;
          p.b = it->b;

          cloudFiltered->push_back(p);

          centroid.add (pcl::PointXYZ (p.x, p.y, p.z));
        }

    }

    pcl::PointXYZ centroid_point;
    centroid.get (centroid_point);

    viewer.showCloud (cloudFiltered);

}

int main(int argc, char **argv)
{
    cout << "HELLO POINTCLOUD!!!" << endl;




    ros::init (argc, argv, "pointcloud2");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe ("/head_camera/depth_registered/points", 1000, cloud_cb);
    pub = nh.advertise<sensor_msgs::PointCloud2> ("output", 1);

    /*
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud;

    pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");
    //
    //
   viewer.showCloud (cloud);

   while (!viewer.wasStopped ())
   {
   }*/

    ros::spin ();



    return 0;
}
