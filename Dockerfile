FROM python:3.10

RUN apt update && apt install -y curl

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH=/root/.local/bin:$PATH

WORKDIR /kagong

COPY . .

EXPOSE 9000
