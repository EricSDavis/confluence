# Use rocker base image for r version 
FROM rocker/r-ver:4.2.0

# Install strawr
RUN apt-get update && \
    apt-get -y install libcurl4-openssl-dev && \
    apt-get install zlib1g-dev && \
    apt-get install wget && \
    wget "https://cran.r-project.org/src/contrib/Rcpp_1.0.10.tar.gz" && \
    wget "https://cran.rstudio.com/src/contrib/strawr_0.0.91.tar.gz" && \
    R CMD INSTALL Rcpp_1.0.10.tar.gz && \
    R CMD INSTALL strawr_0.0.91.tar.gz

# Install juicer_tools
RUN apt-get update && \
    apt-get -y install default-jre && \
    wget "https://github.com/aidenlab/Juicebox/releases/download/v2.20.00/juicer_tools.2.20.00.jar"

WORKDIR .
COPY . .
CMD ["/bin/bash"]