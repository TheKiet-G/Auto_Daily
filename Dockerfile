FROM python:3.11.6-bookworm

WORKDIR /app
COPY collei requirements.txt .

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install -r requirements.txt

CMD ["python3", "collei"]

