#include <string>
#include <algorithm>
#include <iostream>
#include <vector>
#include <stdint.h>
#include <stdio.h>
#include <fstream>
#include "../CRForestEstimator.h"

using namespace std;
using namespace cv;

cv::Vec<float,POSE_SIZE> gt;

int main(int argc, char* argv[]) 
{
	string depth_fname(argv[2]);
	string pose_filename(depth_fname.substr(0,depth_fname.find_last_of('_')));
	pose_filename += "_pose.txt";

	cv::Vec<float,POSE_SIZE> gt;
	bool have_gt = false;

	ifstream gtFile;
	gtFile.open(pose_filename.c_str());
	stringstream temp;
	for (int i = 0; i < 3; i++)
		for (int j = 0; j < 3; j++)
		{
			gtFile >> 
			//have_gt = true;
			//have_gt &=( fread( &gt[0], sizeof(float),POSE_SIZE, gtFile) == POSE_SIZE );
			//gtFile.getline(&gt[0],1000,",");
			//cout << "Ground T.: " << gt[0] << " " << gt[1] << " " << gt[2] << " " << gt[3] << " " << gt[4] << " " << gt[5] <<endl;
			cout << temp;
		}
	gtFile.close();

	return 0;
}