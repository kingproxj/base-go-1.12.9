FROM buildpack-deps:buster-scm

# gcc for cgo
RUN apt-get update && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
		vim \
	&& rm -rf /var/lib/apt/lists/*

#RUN apt-get update
RUN apt-get install mysql-server mysql-client
