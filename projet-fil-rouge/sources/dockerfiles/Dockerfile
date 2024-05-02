# FROM python:3.6-alpine
# LABEL maintener="GBANE Assouman"
# LABEL email="gbane.assouman@gmail.com"
# WORKDIR /opt
# RUN pip install flask==1.1.2
# COPY ./app/ /opt/ 
# EXPOSE 8080
# ENV ODOO_URL='https://www.odoo.com/'
# ENV PGADMIN_URL='https://www.pgadmin.org/'
# ENTRYPOINT ["sh","set_app_url.sh"]
# CMD ["python","app.py"]

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
    && export PGADMIN_URL=$(awk 'NR==2 {print $2}' releases.txt ) \
    && export version=$(awk 'NR==3 {print $2}' releases.txt)
COPY ./app/set_app_url.sh /usr/local/bin
ENTRYPOINT ["sh","/usr/local/bin/set_app_url.sh" ]
CMD ["python","app.py"]
