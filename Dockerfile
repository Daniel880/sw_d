FROM ubuntu:24.04

RUN apt update && \
    apt install -y build-essential cmake lib-magic-dev

WORKDIR /app
COPY main.cpp /app/
COPY CMakeLists.txt /app/
COPY build_software.sh /app/
RUN chmod +x build_software.sh
CMD ["./build_software.sh"]