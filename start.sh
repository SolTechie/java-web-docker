docker run -it -v `pwd`/data/:/data -v ~/.m2:/root/.m2 -p 8080:8080 --link mysql-docker:mysql-server --link redis-docker:redis-server centos:java-web-dev
