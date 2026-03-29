FROM quay.io/docling-project/docling-serve-cpu:latest

USER root

RUN microdnf install -y ffmpeg && microdnf clean all
RUN pip install --no-cache-dir openai-whisper

CMD ["docling-serve", "run", "--host", "0.0.0.0", "--port", "5001"]
