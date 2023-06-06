# Computer-Vision-based-Excavator-Bucket-Filling-Estimation
Master Thesis
## Camera Set-up
follow the instruction,see [Here](https://github.com/IntelRealSense/librealsense/blob/master/doc/installation.md).

### Issues u might occour
- No frames received from camera
  If u use usb 2.0 port, sometimes the power supply of realsense camera is not sufficient.
  See this [solutions](https://github.com/IntelRealSense/realsense-ros/issues/2386#issuecomment-1264499208).
  
- Transfer messege error of ros
  See this [solutions](https://github.com/IntelRealSense/realsense-ros/issues/2386#issuecomment-1228428500).
### Camera calbration
There are serveral methods to calibrate intel realsense camera. See [Overview](https://dev.intelrealsense.com/docs/calibration).
#### On-Chip Calibration
Self-calibration process, reconmmand using Intel Realsense-viewer
1. Install Intelrealsense-Viewer Linux version from [Here](https://github.com/IntelRealSense/librealsense/blob/master/doc/distribution_linux.md).
2. Open Realsense-Viewer using command `realsense-viewer`
3. Stop all streaming
4. Click *More* and choose *On-Chip-Calibration*
5. Export calibration data
#### Dynamic Calibration
Dynamic calibration process, get the extrinct parameter, reconmmand using Intel dynamic calibrator
1. Install the latest version from [here](https://www.intel.com/content/www/us/en/download/645988/intel-realsense-d400-series-dynamic-calibration-tool.html).
2. Print out the chess board image
3. Open dynamic calibration tool, removing chess board image following the instruction
4. Export parameter in *json* file

### Camera installation


## Creat a dataset
The consist of dataset
1. RGB image
2. Depth image
3. Dpeth information in csv 
4. Ground truth
### Record a rosbag
There are two methods to record a rosbag
1. Using Realsense-viewer (Recommand)
2. Using Ros wrapper
### Convert rosbag into images and csv file
Using image_converter.py to extract data from rosbag



  


