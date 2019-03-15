FROM ubuntu:16.04
MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN apt-get update && apt-get install -y python-pip
RUN apt-get install -y xvfb x11-xkb-utils
RUN apt-get install -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
RUN apt-get install -y python-matplotlib

RUN pip install numpy cython scipy h5py nibabel nipype
RUN pip install cvxpy scikit-learn
RUN pip install dipy joblib pandas nibabel

RUN pip install xvfbwrapper
RUN apt-get install -y python-vtk

#make it work under singularity
RUN ldconfig && mkdir -p /N/u /N/home /N/dc2 /N/soft

#https://wiki.ubuntu.com/DashAsBinSh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
