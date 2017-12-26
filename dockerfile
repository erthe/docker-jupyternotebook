# OSはCentOS
FROM centos:latest
 
# install packages
RUN yum -y update
RUN yum -y groupinstall "Development Tools"
RUN yum -y groupinstall "Base"
RUN yum -y install \
           kernel-devel \
           kernel-headers \
           gcc-c++ \
           patch \
           libyaml-devel \
           libffi-devel \
           autoconf \
           automake \
           make \
           libtool \
           bison \
           tk-devel \
           zip \
           wget \
           tar \
           gcc \
           zlib \
           zlib-devel \
           bzip2 \
           bzip2-devel \
           readline \
           readline-devel \
           sqlite \
           sqlite-devel \
           openssl \
           openssl-devel \
           git \
           gdbm-devel \
           opencv \
           libpng12 \
           libXdmcp \
           python-devel
 
RUN yum -y remove opencv
 
RUN wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh && \
    bash Anaconda3-4.2.0-Linux-x86_64.sh -b && \
    rm -f Anaconda3-4.2.0-Linux-x86_64.sh
 
ENV PATH $PATH:/root/anaconda3/bin
 
# OpenCV install
RUN conda install -c https://conda.anaconda.org/menpo opencv3
 
# make jupyter directory
RUN mkdir /opt/jupyter/ && \
    jupyter notebook --generate-config && \
    sed -i -e "s/#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '*'/" /root/.jupyter/jupyter_notebook_config.py
 
CMD cd /opt/jupyter/ && \
    jupyter notebook
