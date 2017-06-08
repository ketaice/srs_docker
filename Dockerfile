FROM centos:centos6

MAINTAINER Keta Guo "keta.guo@gmail.com"

RUN yum install -y redhat-lsb wget zip unzip

RUN cd /home && mkdir srs && cd srs

WORKDIR /home/srs
RUN wget http://www.ossrs.net/srs.release/releases/files/SRS-CentOS6-x86_64-2.0.239.zip
RUN unzip SRS-CentOS6-x86_64-2.0.239.zip
RUN SRS-CentOS6-x86_64-2.0.239/INSTALL
#RUN wget http://git.oschina.net/xiao0613cn/AModule_bin/raw/master/srs_20170531.zip
#RUN unzip srs_20170531.zip

EXPOSE 1985:1985
EXPOSE 8080:8080
EXPOSE 1935:1935

# Define default command.
CMD ["bash"]
