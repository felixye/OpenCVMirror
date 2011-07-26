//
// Example 7-1. Histogram computation and display
//
//
/* *************** License:**************************
   Oct. 3, 2008
   Right to use this code in any way you want without warrenty, support or any guarentee of it working.

   BOOK: It would be nice if you cited it:
   Learning OpenCV: Computer Vision with the OpenCV Library
     by Gary Bradski and Adrian Kaehler
     Published by O'Reilly Media, October 3, 2008
 
   AVAILABLE AT: 
     http://www.amazon.com/Learning-OpenCV-Computer-Vision-Library/dp/0596516134
     Or: http://oreilly.com/catalog/9780596516130/
     ISBN-10: 0596516134 or: ISBN-13: 978-0596516130    

   OTHER OPENCV SITES:
   * The source code is on sourceforge at:
     http://sourceforge.net/projects/opencvlibrary/
   * The OpenCV wiki page (As of Oct 1, 2008 this is down for changing over servers, but should come back):
     http://opencvlibrary.sourceforge.net/
   * An active user group is at:
     http://tech.groups.yahoo.com/group/OpenCV/
   * The minutes of weekly OpenCV development meetings are at:
     http://pr.willowgarage.com/wiki/OpenCV
   ************************************************** */
//
//
//

#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main( int argc, char** argv )
{
    if(argc != 2) { cout << "Usage: ch7_ex7_1 <imagename>" << endl; return -1; }
    Mat src = imread(argv[1],1);
    
    if( src.empty() ) { cout << "Can not load " << argv[1] << endl; return -1; } 
    
    // Compute the HSV image, and decompose it into separate planes.
    //
    Mat hsv; cvtColor(src, hsv, CV_BGR2HSV);

    float h_ranges[] = {0, 180};
    float s_ranges[] = {0, 255};
    const float* ranges[] = {h_ranges, s_ranges};
    int histSize[] = {30, 32}, ch[] = {0, 1};
    
    Mat hist;
    // Compute the histogram
    calcHist(&hsv, 1, ch, noArray(), hist, 2, histSize, ranges, true);
    
    normalize(hist, hist, 0, 255, NORM_MINMAX);
    
    int scale = 10;
    Mat hist_img(histSize[0]*scale, histSize[1]*scale, CV_8UC3);
    
    // Visualize our histogram.
    for( int h = 0; h < histSize[0]; h++ )
        for( int s = 0; s < histSize[1]; s++ )
        {
            float hval = hist.at<float>(h, s);
            rectangle(hist_img, Rect(h*scale, s*scale, scale, scale),
                      Scalar::all(hval), -1);
        }
    
    imshow("image", src);
    imshow("H-S histogram", hist_img);
    waitKey();
    return 0;
}
