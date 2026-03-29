FROM quay.io/docling-project/docling-serve-cpu:latest

USER root

RUN dnf install -y ffmpeg && dnf clean all
RUN pip install --no-cache-dir openai-whisper

CMD ["docling-serve", "run", "--host", "0.0.0.0", "--port", "5001"]
