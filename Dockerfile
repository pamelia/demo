FROM alpine:3.20

WORKDIR /app

COPY echo.py requirements.txt run.sh /app/

RUN apk --update upgrade && \
    apk --no-cache --progress add bash python3 && \
    python3 -m venv /app/venv && \
    source /app/venv/bin/activate && \
    pip install -r /app/requirements.txt

EXPOSE 8080

CMD ["./run.sh"]
