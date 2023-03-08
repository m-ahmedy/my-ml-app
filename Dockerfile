FROM python:3.10-slim

ARG port=8000

WORKDIR /app

COPY requirements.txt .

RUN pip install pip --upgrade \
    && pip install -r requirements.txt

COPY . .

EXPOSE ${port}

CMD python -m flask run --port=${port} --host=0.0.0.0
