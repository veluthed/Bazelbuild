# Bazelbuild
Simple Demo to build Java code using Bazel

This project demonstrates how to compile, build and ship java file using Bazel. 

git clone https://github.com/veluthed/Bazelbuild.git ; cd Bazelbuild/

To setup build infra using docker. (Optional if you dont have Bazel installed)

  docker build -t test-bazel .

  docker run -it -v ${PWD}:/home/bazeluser test-bazel

To build using bazel

   bazel build //:HelloWorld

To test the output

   bazel-bin/HelloWorld

To create shippable jar

   bazel build //:HelloWorld_deploy.jar

Thi will build HelloWorld_deploy.jar, which you can run standalone away from your development environment since it contains the required runtime dependencies.
