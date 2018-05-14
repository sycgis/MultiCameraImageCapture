#include "opencv2/video/tracking.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"

#include <iostream>
#include <ctype.h>
#include <stdio.h>
#include <time.h>
#include <string>
#include <sstream>

#include "camera.h"
#include <popt.h>

using namespace cv;
using namespace std;

#define allCameras false
#define displayImages false


int main(int argc, char *argv[])
{
	cout << "\n";
	cout << "*********************************************************" << endl;
	cout << "*                                                       *" << endl;
	cout << "*                    Welcome to                         *" << endl;
	cout << "*         Multibaseline Stereo Vision Project           *" << endl;
	cout << "*                by Prashant Kumar                      *" << endl;
	cout << "*                                                       *" << endl;
	cout << "*********************************************************" << endl;
	
	if(argc <= 11) {
		std::cerr << "\nCorrect Usage: sudo ./cv_io save_dir showCaptures useMAVLinkForTrigger useGPIOPinsAsTrigger cam1_ID cam2_ID cam3_ID brightness exposure cameras_to_fire use_timestamp" << std::endl;
		std::cerr << "e.g.: sudo ./cv_io /mnt/ssd/ 0 0 0 1 2 3 9 100 123 1" << std::endl;
		std::cerr << "\nsave_dir = '' if cam* folders are in build directory or e.g. /mnt/ssd/ if somewhere else." << std::endl;
		std::cerr << "booleans are 0 or 1. Cam IDs are 0, 1, 2 or 3." << std::endl;
		std::cerr << "brightness is 0-25. exposure 0 = auto, 1-20000 is manual, e.g. 78." << std::endl;
		std::cerr << "cameras_to_fire is 123 for all cameras, 12 for first two, 3 for only last, etc." << std::endl;
		std::cerr << "use_timestamp is to save images with timestamp name or counter name." << std::endl;
		std::cerr << "\n" << std::endl;
		return -1;
	}
	int i = 0;
	string save_directory = argv[++i];
	bool showCaptures = (bool)atoi(argv[++i]);	//to display the captured images during runtime
	bool useMAVLinkForTrigger = (bool)atoi(argv[++i]);	//use MAVLink GPS messages as trigger
	bool useGPIOPinsAsTrigger = (bool)atoi(argv[++i]);	//to use TX2 GPIO pins to trigger cameras
	int cam1_ID = atoi(argv[++i]);
	int cam2_ID = atoi(argv[++i]);
	int cam3_ID = atoi(argv[++i]);
	int brightness = atoi(argv[++i]);
	int exposure = atoi(argv[++i]);
	string cameras = argv[++i];
	bool use_cam1 = cameras.find("1") != -1;
	bool use_cam2 = cameras.find("2") != -1;
	bool use_cam3 = cameras.find("3") != -1;
	bool use_timestamp = (bool)atoi(argv[++i]);
	
	bool valid = use_cam1 || use_cam2 || use_cam3;
	
	cout <<"\n*User Inputs*" << endl;
	cout <<"save_directory: \"" << save_directory << "\"" << endl;
	cout <<"showCaptures: " << showCaptures << endl;
	cout <<"useMAVLinkForTrigger: " << useMAVLinkForTrigger << endl;
	cout <<"useGPIOPinsAsTrigger: " << useGPIOPinsAsTrigger << endl;
	cout <<"cam1_ID: " << cam1_ID << endl;
	cout <<"cam2_ID: " << cam2_ID << endl;
	cout <<"cam3_ID: " << cam3_ID << endl;
	cout <<"brightness: " << brightness << endl;
	cout <<"exposure: " << exposure << endl;
	cout <<"use_cam1: " << use_cam1 << endl;
	cout <<"use_cam2: " << use_cam2 << endl;
	cout <<"use_cam3: " << use_cam3 << endl;
	cout <<"use_timestamp: " << use_timestamp << endl;
	
    cout<<"\nOpenCV version: " << CV_MAJOR_VERSION << "." << CV_MINOR_VERSION << endl;
    
    if(valid)
		uvc_camera::Camera camera(save_directory, showCaptures, useMAVLinkForTrigger, useGPIOPinsAsTrigger, cam1_ID, cam2_ID, cam3_ID, brightness, exposure, use_cam1, use_cam2, use_cam3, use_timestamp);
	else
		cout << "\nInvalid inputs. Quitting...\n" << endl;
	
	return 0;
	
}
