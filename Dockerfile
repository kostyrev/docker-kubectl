FROM alpine:3.10
LABEL maintainer="Aleksandr Kostyrev <kostyrevaa+kubectl@gmail.com>"

ENV KUBECTL_VERSION v1.14.2

RUN apk add --no-cache --virtual .deps curl colordiff

RUN set -ex \
    && curl -sSL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

CMD ["kubectl"]
