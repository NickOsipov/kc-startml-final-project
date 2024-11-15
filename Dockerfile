# Stage 1: Build
FROM python:3.8.5-slim-buster as build

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc 

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Runtime
FROM python:3.8.5-slim-buster as runtime

WORKDIR /app

COPY --from=build /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY --from=build /usr/local/bin /usr/local/bin

COPY app.py app.py

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]