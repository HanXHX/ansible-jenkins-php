FROM williamyeh/ansible:debian8-onbuild

RUN apt-get update
RUN apt-get upgrade -y
CMD ["bash", "tests/test.sh"]

