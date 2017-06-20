FROM python:3.6

WORKDIR /app
COPY app /app
COPY entrypoint.sh /
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["sh", "/entrypoint.sh"]