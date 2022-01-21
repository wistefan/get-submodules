FROM python:3.9.5

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["/usr/src/app/get-images-from-submodules.py"]

WORKDIR /github/workspace

ENTRYPOINT ["python3"]