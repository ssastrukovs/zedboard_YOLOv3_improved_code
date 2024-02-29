# ZedBoard YOLOv3 improved code
Contains code for implementing the YOLOv3 CNN on ZedBoard.

After following [this tutorial](<docs/YOLOv3 ZedBoard Xilinx DNNDK paper.pdf>), I encountered some problems with displaying names of detected classes on a result image.
So, I slightly modified the application code to display those classes and their probabilities directly on an image, and also in command line.

Just replace the "src" folder, when you're done following the aforementioned tutorial, and put the "coco.names" file next to your Makefile :)

# 

Be aware that on smaller images, lines can be too thick, and numbers/words too big. Same goes to big images (but in that case lines \ text size are too small). 
Line thickness and text size are both hardcoded, so you will have to change them manually in main.cpp. 

The line, that you need to change to change the text size is #319. 
To change the line thickness - #310.

putText() and rectangle() openCV functions' arguments can be found in online manuals.

#

Another nifty feature is probability threshold. It is written in [utils.h](<src/utils.h>) as a constant ("CONF") in [line #18]. It defines which classes will be displayed: if their detection probability is less that this number (probability value varies from 0, as in FALSE, to 1, as in TRUE), they will not display at all.

## Source Code from ZedBoard

Full project is in ["full_src"](<full_src>) folder.  
Everything important that was on ZedBoard, lies there.  

Some useful scripts, which I used at my Bachelor diss' presentation, are located in [scripts/sftp_loop_scripts](<scripts/sftp_loop_scripts>): I just opened GNOME image viewer to auto-update, you may improve on it, using something else.

#

Good luck with your shenanigans!

The final result:

![image](<images/shawarma_labeled.jpg>)

_Big thanks to Tallinn Technical University of Technology, and especially for Lembitu Valdmets and Madis Kerner, main authors of aforementioned tutorial, for making this possible._
