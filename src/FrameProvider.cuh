//
// Created by Arthur Zhang on 10/28/2022.
//

#ifndef RETROGRADE_FRAMEPROVIDER_CUH
#define RETROGRADE_FRAMEPROVIDER_CUH


#include "Frame.cuh"

class FrameProvider {
public:
    virtual bool hasNextFrame() = 0;

    virtual Frame nextFrame() = 0;
};


#endif //RETROGRADE_FRAMEPROVIDER_CUH
