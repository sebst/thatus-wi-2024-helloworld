FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

COPY public.key /tmp/public.key

RUN apt-get update && \
    apt-get install -y gnupg ca-certificates && \
    apt-key add /tmp/public.key && \
    echo "deb https://sebst.github.io/thatus-wi-2024-helloworld/repo/ noble main" > /etc/apt/sources.list.d/thatus-wi-2024-helloworld.list

RUN apt-get update && \
    apt-get install -y helloworld && \
    apt-get clean && \
    rm /tmp/public.key

# Default command
CMD ["helloworld"]