FROM ubuntu:latest

# Update apps on the base image
RUN apt-get -y update && apt-get install -y

# Install the Clang compiler
RUN apt-get -y install clang

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY . /usr/src/dockertest1

# Specify the working directory
WORKDIR /usr/src/dockertest1i

# Use Clang to compile the Test.cpp source file
RUN clang++ -o main main.cpp

# Run the output program from the previous step
CMD ["./main"]