/* License:
   July 20, 2011
   Standard BSD

   BOOK: It would be nice if you cited it:
   Learning OpenCV 2: Computer Vision with the OpenCV Library
     by Gary Bradski and Adrian Kaehler
     Published by O'Reilly Media
 
   AVAILABLE AT: 
     http://www.amazon.com/Learning-OpenCV-Computer-Vision-Library/dp/0596516134
     Or: http://oreilly.com/catalog/9780596516130/
     ISBN-10: 0596516134 or: ISBN-13: 978-0596516130    

   Main OpenCV site
   http://opencv.willowgarage.com/wiki/
   * An active user group is at:
     http://tech.groups.yahoo.com/group/OpenCV/
   * The minutes of weekly OpenCV development meetings are at:
     http://pr.willowgarage.com/wiki/OpenCV
*/
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"

#include <iostream>
using namespace cv;

void help()
{
	std::cout << "Call: ./ch2_ex2_5 faceScene.jpg" << std::endl;
}

int main( int argc, char** argv )
{
  Mat img = imread( argv[1] );
	if(img.empty())
	{
		std::cerr << "Couldn't open the image " << argv[1] << std::endl;
		help();
		return -1;
	}
  Mat img2;
  namedWindow("Example1", CV_WINDOW_AUTOSIZE );
  namedWindow("Example2", CV_WINDOW_AUTOSIZE );
  imshow("Example1", img );
  pyrDown(img,img2);
  imshow("Example2", img2 );
  waitKey(0);
  return 0;
}
