FROM python:3.6

WORKDIR /app
COPY requirements.txt /app/
COPY main.py /app/
COPY docker-entrypoint.sh /app/
ENV AWS_ACCESS_KEY_ID xxx
ENV AWS_SECRET_ACCESS_KEY xxx

RUN pip install -r requirements.txt

ENTRYPOINT ["/app/docker-entrypoint.sh"]