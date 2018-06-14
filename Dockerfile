FROM python:3

WORKDIR c:\tools\docker

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
EXPOSE 5000/tcp
CMD [ "python", "./hello-rest.py" ]