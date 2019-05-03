# sawyer_install
A script that sets up everything in one go.

1. Use `sawyer_install_script.bash` to set up your workspace (see )
2. Install CUDA using `cuda_install.sh` hold down enter to go through the end-user agreement. Say keep default locations and say `yes` to everything EXCEPT Install NVIDIA Accelerated Graphics Driver. This should already be installed and since it's running it will fail.
3. Add cuda to your path with `cuda_install_cleanup.sh`. You can test if you installed everything successfully by running the following:
- `cd ~/NVIDIA_CUDA-10.0_Samples

- `make`
- `cd bin/x86_64/linux/release`
- `./deviceQuery`
This should result in it saying PASS at the bottom. See more details [here](http://www.rignitc.com/2018/12/29/install-cuda-10-with-ubuntu-16-04/)

4. Install libfreenect2 using `kinect_install.sh`. See more details [here](https://github.com/OpenKinect/libfreenect2/blob/master/README.md#linux)
