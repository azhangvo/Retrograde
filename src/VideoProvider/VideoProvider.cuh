//
// Created by Arthur Zhang on 10/28/2022.
//

#ifndef RETROGRADE_VIDEOPROVIDER_CUH
#define RETROGRADE_VIDEOPROVIDER_CUH


#include "../FrameProvider.cuh"
#include <string>

class VideoProvider : FrameProvider {
public:
    explicit VideoProvider(std::string path);

    bool hasNextFrame() override;

    Frame nextFrame() override;
};


#endif //RETROGRADE_VIDEOPROVIDER_CUH
