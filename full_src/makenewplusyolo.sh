#!/bin/bash
make clean
make
./yolo coco_test.jpg i
