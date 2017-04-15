#!/bin/bash
docker build . --squash  -t centos:java-web-dev
#加了squash后删除多余的压缩前镜像
