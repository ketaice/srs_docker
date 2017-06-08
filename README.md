# srs_docker
Docker file of srs(simple rtmp server).

Build step:

1. docker build -t keta/srs .

2. docker run -p 1985:1985 -p 8080:8080 -p 1935:1935 --name my_srs -idt keta/srs
