# 1. Cuda installation #
* Go to the nvidia website link below: (**Note**: This is for CUDA version 11.0 which is preferable for gpgpusim as of now. However 11.7 is also working which is tested.)
* https://developer.nvidia.com/cuda-11.0-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu and select according to your OS version and then click on ***‘deb (local)’***, it will display installer instructions as shown below.
![alt text](https://github.com/tejashwar27/CADSL_README/blob/6062d1fe7cdc5c897938a746a59521d558074280/installations/cuda_installation_guidelines.png?raw=true) 
* Now follow the installation instructions one-by-one (except the last one)
* Then the last instruction is changed as follows: ```sudo apt-get -y install cuda-toolkit-11-0```
* Add the following lines at the end of your ‘.bashrc’ file
  ```
  export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}
  export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
  export CUDA_INSTALL_PATH=/usr/local/cuda
  ```
# 2. gpgpu-sim #
```
git clone https://github.com/gpgpu-sim/gpgpu-sim_distribution.git
```
* for Ubuntu 20.04 only. Ubuntu 18 users can ignore the below two gcc installations.
 ```
  apt install gcc-7
  apt install g++-7
```
```
cd gpgpu-sim_distribution
ln -s /usr/bin/gcc-7 ./bin/gcc
ln -s /usr/bin/g++-7 ./bin/g++
source setup_environment
make
```
# 3. Trial run #
* Copy the samples folder to your home folder to avoid ‘sudo’ every time: ```cp -r /usr/local/cuda/samples ~/```
* Run some basic examples from the ‘sample’ folder  such as {vector-add,clock} in 0_simple sub-folder and{bandwidth-test} in 1_utilities  and to check whether gpgpu-sim is working or not. (These examples are selected as they have less execution time)
* Running vector-add example:
  * ```source gpgpu-sim_distribution/setup_environment```
  * Copy the config file of architecture into vector-add folder: ```cp -r ~/gpgpu-sim_distribution/configs/tested-cfgs/SM2_GTX480/* ~/samples/0_Simple/vectorAdd/```
  * **Note**: In the above step always use ‘tested_cfgs’. For power analysis xml file should be there in the architecture folder-eg:SM2_GTX480
  * ```cd samples/0_Simple/vectorAdd```
  * Make sure that ‘--cudart shared’ is added in  the line  ```NVCCFLAGS   := -m${TARGET_SIZE} --cudart shared``` in Makefile
  * ```make```
  * It generates a binary file ‘vectorAdd’
  * (Optional) You can check the dependencies of the generated output binary using ldd: ```ldd vectorAdd```. The output should contain something like: ```libcudart.so.11.0 => /home/gsbnaidu/gpgpu-sim_distribution/lib/gcc-7.5.0/cuda-11000/release/libcudart.so.11.0 (0x00007f81e7353000)```
  * To run use: ```./vectorAdd```
* **Note**: To get the output into a text file: ```./vectorAdd > filename.txt```
* **Note**: If some cuda code or functions are not working then the reason may be that they were not implemented on gpgpu-sim, avoid using such functions or benchmarks.


