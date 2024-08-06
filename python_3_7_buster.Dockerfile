FROM python:3.7.13-buster

# Set OpenSSL SECLEVEL to 1. In PP are using SHA1 and without it, requests won't work.
RUN sed -i.bak -e 's/SECLEVEL=2/SECLEVEL=1/' /usr/lib/ssl/openssl.cnf
