FROM  python:3.11

ADD ./ /Dios
WORKDIR /Dios
RUN pip install --upgrade pip
RUN pip freeze > ./requirements.txt
COPY  ./requirements.txt  ./requirements.txt
RUN pip install -r requirements.txt 
RUN cd /Dios/
 
RUN chmod 777 ./entrypoint.sh
EXPOSE 8000
VOLUME /Dios