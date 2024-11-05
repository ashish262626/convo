FROM centos:7
#update and install nginx section
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y nginx
#create path and add index.html
WORKDIR /usr/share/nginx/html

#this one working with no issue 
RUN touch index.htm
#this one will get failed
RUN touch index.html

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
