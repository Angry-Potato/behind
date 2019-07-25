FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT 8000

CMD [ "sh", "-c", "python manage.py runserver 0:${PORT}" ]