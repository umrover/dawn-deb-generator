# Dawn Debian Package Generator

### Usage

1) Clone the desired dawn version into dawn/
2) Run `./build.sh`. The resulting debian file will be in build/

### Updating Dawn

1) Change the branch of dawn/ to chromium/xxxx where xxxx is the new version tag
2) Update the project name in CMakeLists.txt to match xxxx
3) Update the webgpu.hpp header in the main repo to match the version, this can be found at https://github.com/eliemichel/WebGPU-distribution and selecting the matching branch. Look for the header in include/webgpu
