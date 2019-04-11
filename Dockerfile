FROM registry.access.redhat.com/rhscl/php-72-rhel7

USER root

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install Apache Web Server
RUN yum install -y rh-php72-php-xmlrpc; yum clean all

USER 1001