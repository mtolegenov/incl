FROM python:3.8

WORKDIR /app

COPY req.txt .
RUN  pip install -r req.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]