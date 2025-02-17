# Используем официальный образ Python
FROM python:3.12-slim


# ENV BOT=7819072163:AAFEO133NpohMJEfIS2LACLPekQSWRNzL7k
# ENV OPEN_API=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

RUN apt-get update && apt-get install -y redis-server

WORKDIR /app
COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY /src/ /app/
COPY docker-entrypoint.sh /app/


RUN chmod +x /app/docker-entrypoint.sh



EXPOSE 6379

ENTRYPOINT ["/app/docker-entrypoint.sh"]
