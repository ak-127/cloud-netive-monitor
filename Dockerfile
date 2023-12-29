FROM python:3.10

WORKDIR /app

COPY requirement.txt .

RUN pip3 install --no-cache-dir -r requirement.txt

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD [ "flask", "run" ]