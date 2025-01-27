FROM python:3.11.4
COPY ./app12.py /flower/
COPY ./requirements.txt /flower/
COPY ./ModelFlower.h5 /flower/
COPY ./proses.py /flower/
COPY ./Template/index.html /flower/Template/
WORKDIR /flower/
RUN pip install -r requirements.txt
ENTRYPOINT ["python","-m","app12:app","--host","0.0.0.0","--port","80"]
