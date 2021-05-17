FROM jenkins/jenkins:2.277.4-lts

# Distributed Builds plugins for jenkins slave agents
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# # install Notifications and Publishing plugins
# # RUN /usr/local/bin/install-plugins.sh email-ext
# # RUN /usr/local/bin/install-plugins.sh mailer
# # RUN /usr/local/bin/install-plugins.sh slack

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Plugin to enable Kubernetes Scaling for HA
RUN /usr/local/bin/install-plugins.sh kubernetes

# install Maven
USER root
RUN apt-get update && apt-get install -y maven
USER jenkins