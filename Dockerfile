FROM centos:7

LABEL Author "Nishant V <nishant.veluthedath@gmail.com>"

USER root


#Add repo info for downloading bazel
RUN curl https://copr.fedorainfracloud.org/coprs/vbatts/bazel/repo/epel-7/vbatts-bazel-epel-7.repo --output /etc/yum.repos.d/vbatts-bazel-epel-7.repo

#Gcc doesnt comes out of the box and its required for bazel to run
RUN yum -y update && yum clean all \
   && yum -y install gcc \
   && yum -y install bazel3

#Create user
RUN useradd -ms /bin/bash bazeluser

USER bazeluser

#set user home
WORKDIR /home/bazeluser
