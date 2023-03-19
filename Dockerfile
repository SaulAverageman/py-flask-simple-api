FROM python:3.8-slim-buster
RUN pip3 install flask
RUN echo "py-user:x:76543:76543::/work:/bin/bash"
USER 76543
WORKDIR /work
COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python3","-m","flask","run","--host=0.0.0.0"]