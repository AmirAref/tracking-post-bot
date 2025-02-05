# pull the images
FROM python:3.11-bullseye

RUN pip install uv

WORKDIR /code/

COPY requirements.lock ./
RUN uv pip install --no-cache --system -r requirements.lock

COPY src/ ./src

ENTRYPOINT ["python", "-m", "src.bot"]
