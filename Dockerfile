FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt

COPY . /app

# Run both health_check.py and bot.py
CMD python3 health_check.py & python3 bot.py
