FROM library/python:latest
RUN apt update && apt install -y pipenv
COPY Pipfile /bot/
COPY Pipfile.lock /bot/
WORKDIR /bot
RUN pipenv install
COPY . /bot

CMD ["pipenv", "run", "python3", "app.py"]
