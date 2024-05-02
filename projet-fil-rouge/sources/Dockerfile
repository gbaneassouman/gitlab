FROM python:3.6-alpine
LABEL maintener="GBANE Assouman"
LABEL email="gbane.assouman@gmail.com"
WORKDIR /opt
RUN pip install flask==1.1.2
COPY ./app /opt/ 
EXPOSE 8080
ENV ODOO_URL='https://www.odoo.com/'
ENV PGADMIN_URL='https://www.pgadmin.org/'
RUN export ODOO_URL=$(awk 'NR==1 {print $2}' releases.txt ) \
    && export PGADMIN_URL=$(awk 'NR==2 {print $2}' releases.txt ) 
ENTRYPOINT ["python","app.py"]

