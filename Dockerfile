FROM java:7
MAINTAINER dschien

# install dev tools
RUN apt-get install -y wget tar

# get drill
RUN wget http://mirrors.ukfast.co.uk/sites/ftp.apache.org/drill/drill-1.4.0/apache-drill-1.4.0.tar.gz 
# create Drill folder
RUN mkdir -p /opt/drill
RUN ls
# extract Drill
RUN tar -xvzf apache-drill-1.4.0.tar.gz -C /opt/drill

EXPOSE 8047

# add boostrap.sh
ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
CMD /etc/bootstrap.sh

