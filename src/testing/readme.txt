Biwi Kinect Head Pose Database

This database is made available for non-commercial use such as research and education.

We kindly ask you to cite the following reference in your publications related to this work:

G. Fanelli and T. Weise and J. Gall and L. Van Gool
Real Time Head Pose Estimation from Consumer Depth Cameras
33rd Annual Symposium of the German Association for Pattern Recognition (DAGM'11)
September 2011

Email: fanelli@vision.ee.ethz.ch

www.vision.ee.ethz.ch/gfanelli


The database contains 24 sequences acquired with a Kinect sensor. 20 people (some were recorded twice - 6 women and 14 men) were recorded while turning their heads, sitting in front of the sensor, at roughly one meter of distance.

For each sequence, the corresponding .obj file represents a head template deformed to match the neutral face of that specific person.
In each folder, two .cal files contain calibration information for the depth and the color camera, e.g., the intrinsic camera matrix of the depth camera and the global rotation and translation to the rgb camera.
For each frame, a _rgb.png and a _depth.bin files are provided, containing color and depth data. The depth (in mm) is already segmented (the background is removed using a threshold on the distance) and the binary files compressed (an example c code is provided to show how to read the depth data into memory).
The _pose.txt files contain the ground truth information, i.e., the location of the center of the head in 3D and the head rotation, encoded as a 3x3 rotation matrix.

The data is provided 'as is', without any warranty, use at your own risk.

The following list shows the correspondences between the subjects (M/FXX) and the sequence number.

01 - F01
02 - F02
03 - F03
04 - F04
05 - F05
06 - F06
07 - M01
08 - M02
09 - M03
10 - M04
11 - M05
12 - M06
13 - M07
14 - M08
15 - F03
16 - M09
17 - M10
18 - F05
19 - M11
20 - M12
21 - F02
22 - M01
23 - M13
24 - M14





