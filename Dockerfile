FROM python:3.8.5-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc 

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]