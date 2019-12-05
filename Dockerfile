FROM nvidia/cuda:10.1-cudnn7-devel
RUN apt update && apt install -y curl unzip
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list \
          && curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
RUN apt update && apt install -y cmake default-jre
RUN cd /tmp && wget https://github.com/bazelbuild/bazel/releases/download/0.25.2/bazel-0.25.2-installer-linux-x86_64.sh
#RUN /usr/lib/dltoolchain/bazel-0.25.2-installer-linux-x86_64.sh

