# Computer-Vision-based-Excavator-Bucket-Filling-Estimation
Master Thesis
## Camera installation
follow the instruction,see [Here](https://github.com/IntelRealSense/librealsense/blob/master/doc/installation.md).
### On-Chip Calibration
Slef-calibration process, reconmmand using Intel Realsense-viewer
1. Install Intelrealsense-Viewer Linux version from [Here](https://github.com/IntelRealSense/librealsense/blob/master/doc/distribution_linux.md).
2. Open Realsense-Viewer using command `realsense-viewer`
3. Stop all streaming
4. Click #MORE# and choose #On-Chip-Calibration
5. Export calibration data
### Issues u might occour
- No frames received from camera
  If u use usb 2.0 port, sometimes the power supply of realsense camera is not sufficient.
  See this [solutions](https://github.com/IntelRealSense/realsense-ros/issues/2386#issuecomment-1264499208).
  
- Transfer messege error of ros
  See this [solutions](https://github.com/IntelRealSense/realsense-ros/issues/2386#issuecomment-1228428500).
### Camera calbration
There are serveral methods to calibrate intel realsense camera. See [Overview](https://dev.intelrealsense.com/docs/calibration).


  


