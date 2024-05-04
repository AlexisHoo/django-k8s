FROM python:3.11.9-slim

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv_k8s

RUN /opt/venv_k8s/bin/pip install pip --upgrade
RUN /opt/venv_k8s/bin/pip install -r requirements.txt
RUN chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]