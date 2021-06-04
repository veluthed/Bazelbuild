# Bazelbuild
Simple Demo to build Java code using Bazel.

You can either download the executable called HelloWorld_deploy.jar under out/artifacts/HelloWorld_jar/ or follow below steps to build it locally.

git clone https://github.com/veluthed/Bazelbuild.git ; cd Bazelbuild/

docker build -t test-bazel

docker run -it -v ${PWD}:/home/bazeluser tes-bazel

To build 

bazel build //:HelloWorld

To test the output

bazel-bin/HelloWorld

To create shippable jar

bazel build //:HelloWorld_deploy.jar

Thi will build HelloWorld_deploy.jar, which you can run standalone away from your development environment since it contains the required runtime dependencies.
