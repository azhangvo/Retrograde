//
// Created by Arthur Zhang on 10/28/2022.
//

#ifndef RETROGRADE_FRAME_CUH
#define RETROGRADE_FRAME_CUH


#include "opencv2/core.hpp"

class Frame {
public:
    Frame() {
        mat = cv::Mat(4, 8, CV_16SC3);
    }

    cv::Mat getMat();

private:
    cv::Mat mat;
};


#endif //RETROGRADE_FRAME_CUH
