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



//http://wiki.ros.org/pcl/Tutorials
using namespace std;

ros::Publisher pub;


void cloud_cb (const sensor_msgs::PointCloud2ConstPtr& input)
{
    pcl::PointCloud<pcl::PointXYZRGB> cloud2;
    pcl::fromROSMsg (*input, cloud2);
    //pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud(cloud2);
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud = cloud2.makeShared();;

    pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");
    //
    //
    cout << "SHOWING POINT CLOUD!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" << endl;
   viewer.showCloud (cloud);


    //boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer (new pcl::visualization::PCLVisualizer ("3D Viewer"));
    /*viewer.setBackgroundColor (0, 0, 0);
    viewer->addPointCloud<pcl::PointXYZ> (cloud, "sample cloud");
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "sample cloud");
    viewer->addCoordinateSystem (1.0);
    viewer->initCameraParameters ();

    while (!viewer->wasStopped ())
    {
        viewer->spinOnce (100);
        boost::this_thread::sleep (boost::posix_time::microseconds (100000));
    }*/

    //viewer.showCloud (cloud.makeShared());
    //

}

int main(int argc, char **argv)
{
    cout << "HELLO POINTCLOUD!!!" << endl;


    ros::init (argc, argv, "pointcloud");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe ("/head_camera/depth_registered/image_raw", 1000, cloud_cb);
    pub = nh.advertise<sensor_msgs::PointCloud2> ("output", 1);


    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud;

    pcl::visualization::CloudViewer viewer ("Simple Cloud Viewer");
    //
    //
   viewer.showCloud (cloud);

   while (!viewer.wasStopped ())
   {
   }

    ros::spin ();



    return 0;
}
