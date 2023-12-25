#/bin/bash

docker rm -f ros2_humble >> /dev/null 2>&1

docker run -itd --network host \
    --privileged \
    --name ros2_humble \
    ros2_humble:testing \
