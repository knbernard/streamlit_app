# Base builder image
FROM python:3.12

WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD [ "streamlit", "run", "app.py"]