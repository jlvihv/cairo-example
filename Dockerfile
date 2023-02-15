FROM continuumio/anaconda3
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y && apt-get install -y gcc build-essential
RUN python -m pip install ecdsa fastecdsa sympy cairo-lang openzeppelin-cairo-contracts -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY ./starkli /bin/starkli