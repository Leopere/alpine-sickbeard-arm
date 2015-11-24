FROM hypriot/rpi-alpine-scratch

RUN apk update && \
    apk upgrade && \
    apk add python py-pip git && \
    pip install --upgrade pip && \
    rm -rf /var/cache/apk/* && \
    pip install cheetah && \
    git clone git://github.com/midgetspy/Sick-Beard.git /app/

EXPOSE 8081

WORKDIR /app/
ENTRYPOINT ["python", "SickBeard.py"]
