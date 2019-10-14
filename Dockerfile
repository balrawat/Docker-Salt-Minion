#
# Salt Stack Salt Minion Container
#

FROM centos:7
MAINTAINER Balvinder <bal.rawat@gmail.com>


# Update System
RUN yum upgrade -y

# Add PPA

RUN yum install -y dmidecode wget epel-release
RUN rpm -ivh https://repo.saltstack.com/py3/redhat/salt-py3-repo-2019.2.el7.noarch.rpm 

# Install Salt

RUN yum install -y  salt-minion

# Add Run File

ADD run-minion.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

# Run Command

CMD "/usr/local/bin/run.sh"
