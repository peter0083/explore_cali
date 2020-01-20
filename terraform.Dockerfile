FROM alpine
MAINTAINER Peter Lin <peter.tingyao@gmail.com>

# install terraform
RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.19/terraform_0.12.19_linux_amd64.zip

# unzip terraform.zip
RUN unzip /tmp/terraform.zip -d /

ENTRYPOINT [ "/terraform" ]

USER nobody
# limit user priviledge to nobody (can only execute runs) instead of as default user (root access)
# to prevent malicious use


