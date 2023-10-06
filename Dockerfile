FROM ubuntu:22.04
WORKDIR /Container
COPY . .
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install python3 python3-pip -y
	
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD flask run -h 0.0.0.0 -p 5000

