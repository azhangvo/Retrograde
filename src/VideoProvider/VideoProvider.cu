//
// Created by Arthur Zhang on 10/28/2022.
//

#include "VideoProvider.cuh"
#include <string>

VideoProvider::VideoProvider(std::string path) {

}

bool VideoProvider::hasNextFrame() {
    return true;
}

Frame VideoProvider::nextFrame() {
    return Frame();
}