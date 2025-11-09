FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/app

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

# Ajusta WEB_CONCURRENCY segun CPU disponible. Regla rapida: 2 a 4 workers por vCPU
ENV WEB_CONCURRENCY=2
CMD ["gunicorn", "-b", "0.0.0.0:8080", "-w", "2", "server:app"]
