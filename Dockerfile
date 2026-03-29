FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    docling-serve \
    openai-whisper \
    easyocr

CMD ["docling-serve", "run", "--host", "0.0.0.0", "--port", "5001"]
