FROM centos:7

# the IBM idt installer has an undocumented dependency on "which"
# need to install it here
RUN yum install -y docker-ce docker-ce-cli containerd.io which
RUN curl -sL https://ibm.biz/idt-installer | bash

# The instructions said to do this https://cloud.ibm.com/kubernetes/registry/main/start
# (step 3), but it failed and said it was alread there.
# yet later I did this again and it was required. Weird.
# In any case I can force the intermittant reinstall with -f for
# consistent success
RUN ibmcloud plugin install container-registry -r Bluemix -f
