FROM python:3.12

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install poetry
RUN poetry config virtualenvs.create false
COPY poetry.lock pyproject.toml ./
RUN poetry install

COPY mysite .
