FROM python:3.9-slim-buster
LABEL author="mark.chang"
WORKDIR /code
COPY pyproject.toml poetry.lock ./
COPY ./app /code/app
RUN pip3 install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --no-dev

EXPOSE 8000
CMD ["./script/run.sh"]
