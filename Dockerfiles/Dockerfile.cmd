FROM python:3.11.14-alpine3.23
WORKDIR /usr/src/app
COPY main.py .
COPY age.py . 
ENTRYPOINT ["echo", "python"]
CMD ["main.py"]
