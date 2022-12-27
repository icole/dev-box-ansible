FROM fedora:latest AS base
WORKDIR /usr/local/bin
RUN dnf update --refresh -y && \
  dnf install -y curl git python ansible

FROM base AS user
ARG TAGS
RUN groupadd --gid 1000 icole
RUN useradd --uid 1000 --gid 1000 icole
RUN usermod -aG wheel icole && echo "icole ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/icole
RUN chmod 0440 /etc/sudoers.d/icole
USER icole
WORKDIR /home/icole

FROM user
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]