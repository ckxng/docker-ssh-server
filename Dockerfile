FROM centos:6.4
MAINTAINER Cameron King <http://cameronking.me>

RUN yum -y install openssh-server
RUN useradd -mUs /bin/bash -p '$6$iKh4...XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX...Fh.' user 
ADD sshd /etc/pam.d/sshd

VOLUME ["/home"]

EXPOSE 22
ADD start.sh /start.sh

CMD ["/start.sh"]

