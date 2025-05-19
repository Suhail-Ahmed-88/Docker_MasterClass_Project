# Dockerfile

FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app.py 

EXPOSE 5000

CMD ["streamlit", "run", "streamlit_app.py", "--server.port=5000", "--server.address=0.0.0.0"]
