FROM python:3.7-slim
COPY ./ /app
RUN pip install -r /app/requirements.txt
WORKDIR /app/random_cofee_bot/
CMD python main.py
