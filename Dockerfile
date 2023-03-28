FROM python:3.8-slim-buster
RUN pip3 install flask
RUN echo "py-user:x:96745:96745::/work:/bin/bash" >> /etc/passwd
USER 96745
WORKDIR /work
COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python3","-m","flask","run","--host=0.0.0.0"]
