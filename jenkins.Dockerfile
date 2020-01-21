FROM jenkins/jenkins:alpine
MAINTAINER Peter Lin <peter.tingyao@gmail.com>

# jenkins is great for its varsitility of plugins
# but it does not come with these plugins out of the box
COPY plugins.txt /usr/share/jenkins/plugins.txt
# install the jenkins plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
EXPOSE 8080

