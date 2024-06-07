FROM python:3.6
RUN mkdir /app
WORKDIR /app
COPY run.sh payment.ini payment.py requirements.txt rabbitmq.py /app/
RUN pip3.6 install -r requirements.txt
ENTRYPOINT ["bash", "/app/run.sh"]