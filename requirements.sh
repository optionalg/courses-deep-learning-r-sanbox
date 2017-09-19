# Use this file to install Linux software packages into the course image.
# R packages should be installed from requirements.R
# There is a list of available Linux packages at 
# https://packages.debian.org/testing/allpackages

# e.g., XML and Cairo graphics
apt-get update
apt-get --yes --force-yes install libxml2-dev libcairo2-dev
apt-get --yes --force-yes install build-essential git
apt-get --yes --force-yes install libopenblas-dev liblapack-dev 
apt-get --yes --force-yes install libopencv-dev 

git clone --recursive https://github.com/apache/incubator-mxnet.git mxnet --branch 0.11.0
cd mxnet
make -j $(nproc) USE_OPENCV=1 USE_BLAS=openblas

make rpkg
R CMD INSTALL mxnet_current_r.tar.gz