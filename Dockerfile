FROM python:3.11

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY scripts /scripts

COPY . /srv/root
WORKDIR /srv/root

# TODO: figure out k8s persistence setup
# VOLUME /usr/src/app/.devpi

ENTRYPOINT ["/scripts/entrypoint.sh"]
