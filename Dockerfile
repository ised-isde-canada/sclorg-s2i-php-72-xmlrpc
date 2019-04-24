FROM registry.access.redhat.com/rhscl/php-72-rhel7

USER root

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install php-xmlrpc module from RHSCL repo 
RUN yum-config-manager --enable rhel-server-rhscl-7-rpms; yum install -y rh-php72-php-xmlrpc; yum clean all

USER 1001
