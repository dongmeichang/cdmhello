FROM ubuntu:trusty                                                                                                      
MAINTAINER ruicao ruicao@mathildetech.com                                                                                                                                                                                                 
RUN apt-get update && \                                                                                                 
    apt-get install -y python-pip                                                                                                                                                                                                            
RUN pip install flake8                                                                                                                                                                                                                       
WORKDIR /app                                                                                                                                                                                                                                 
EXPOSE 80                                                                                                                                                                                                                                   
COPY . /app                                                                                                                                                                                                                                   
RUN chmod +x /app/a.sh                                                                                                                                                                                                                    
CMD ["/app/a.sh"] 
