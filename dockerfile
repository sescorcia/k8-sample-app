FROM python:3.9-slim-buster

#flask dependencies
COPY /app/requirements.txt .
RUN pip install -r ./requirements.txt

#flask app code
COPY /app/app.py .

#startup script
CMD ["python","app.py"]