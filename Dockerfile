FROM buildpack-deps:buster-scm

# gcc for cgo
RUN apt-get update && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
		vim \
		mysql-apt-config \
	&& rm -rf /var/lib/apt/lists/*

RUN wget https://dev.mysql.com/get/mysql-apt-config_0.8.10-1_all.deb
RUN dpkg -i mysql-apt-config_0.8.10-1_all.deb
#RUN apt-get update
RUN apt-get install mysql-client
