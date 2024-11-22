FROM debian:buster-slim

RUN apt-get update && apt-get install -y ghostscript texlive-publishers texlive-lang-portuguese texlive-latex-extra texlive-fonts-recommended make

RUN apt-get update && apt-get install -y \
    pandoc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /home/latex
