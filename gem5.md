# Setup of distrobox + Screen + GEM5
This document is for setting up GEM5 version V19.0.0 (SHA: 9fc9c67b4242c03f165951775be5cd0812f2a705), 
which is not latest, on distrobox container of Ubuntu 16.04

# Prerequisites
Install and test distrobox. Refer to the document "installations/distrobox.md" for detailed instructions.

# GEM5 Installation

1. First enter Ubuntu 16.04 container of distrobox using:
```bash
distrobox enter ubuntu-16-04
```
2. Now in the distrobox, first setup all the required dependencies:
```bash
sudo apt install -y automake zlib1g-dev git scons build-essential python-dev swig libprotobuf-dev python-protobuf protobuf-compiler libgoogle-perftools-dev python-six
```
3. Change the directory to where you want to clone GEM5 repo:
```bash
cd <some_path>
```
4. Clone GEM5 repo:
```bash
git clone https://gem5.googlesource.com/public/gem5
```
5. Checkout the older version of GEM5:
```bash
git checkout 9fc9c67b4242c03f165951775be5cd0812f2a705
```
6. Build and test the GEM5 (Expected time: 20-30 min)
```bash
scons build/X86/gem5.opt -j6
```
