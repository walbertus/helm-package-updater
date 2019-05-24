FROM gcr.io/cloud-builders/kubectl

ENV HELM_VERSION="v2.14.0"

RUN curl -Lo /tmp/helm-linux-amd64.tar.gz https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz
RUN tar -xvf /tmp/helm-linux-amd64.tar.gz -C /tmp/
RUN chmod +x /tmp/linux-amd64/helm
RUN mv /tmp/linux-amd64/helm /usr/local/bin/
RUN rm -r /tmp/*
