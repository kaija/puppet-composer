FROM puppet/puppetserver:7.8.0

RUN apt update && apt install -y python3
