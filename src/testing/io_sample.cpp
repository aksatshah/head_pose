/*
 * Gabriele Fanelli
 *
 * fanelli@vision.ee.ethz.ch
 *
 * BIWI, ETHZ, 2011
 *
 * Part of the Biwi Kinect Head Pose Database
 *
 * Example code for reading a compressed binary depth image file.
 *
 * THE SOFTWARE IS PROVIDED “AS IS” AND THE PROVIDER GIVES NO EXPRESS OR IMPLIED WARRANTIES OF ANY KIND,
 * INCLUDING WITHOUT LIMITATION THE WARRANTIES OF FITNESS FOR ANY PARTICULAR PURPOSE AND NON-INFRINGEMENT.
 * IN NO EVENT SHALL THE PROVIDER BE HELD RESPONSIBLE FOR LOSS OR DAMAGE CAUSED BY THE USE OF THE SOFTWARE.
 *
 *
 */

#include <iostream>
#include <fstream>
#include <cstdlib>

int16_t* loadDepthImageCompressed( const char* fname ){

	//now read the depth image
	FILE* pFile = fopen(fname, "rb");
	if(!pFile){
		std::cerr << "could not open file " << fname << std::endl;
		return NULL;
	}

	int im_width = 0;
	int im_height = 0;
	bool success = true;

	success &= ( fread(&im_width,sizeof(int),1,pFile) == 1 ); // read width of depthmap
	success &= ( fread(&im_height,sizeof(int),1,pFile) == 1 ); // read height of depthmap

	int16_t* depth_img = new int16_t[im_width*im_height];
	
	int numempty;
	int numfull;
	int p = 0;

	while(p < im_width*im_height ){

		success &= ( fread( &numempty,sizeof(int),1,pFile) == 1 );

		for(int i = 0; i < numempty; i++)
			depth_img[ p + i ] = 0;

		success &= ( fread( &numfull,sizeof(int), 1, pFile) == 1 );
		success &= ( fread( &depth_img[ p + numempty ], sizeof(int16_t), numfull, pFile) == (unsigned int) numfull );
		p += numempty+numfull;

	}

	fclose(pFile);

	if(success)
		return depth_img;
	else{
		delete [] depth_img;
		return NULL;
	}
}

float* read_gt(const char* fname){

	//try to read in the ground truth from a binary file
	FILE* pFile = fopen(fname, "rb");
	if(!pFile){
		std::cerr << "could not open file " << fname << std::endl;
		return NULL;
	}
	
	float* data = new float[6];
	
	bool success = true;
	success &= ( fread( &data[0], sizeof(float), 6, pFile) == 6 );
	fclose(pFile);
	
	if(success)
		return data;
	else{
		delete [] data;
		return NULL;
	}

}
