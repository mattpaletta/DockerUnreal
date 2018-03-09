FROM phusion/baseimage:latest
RUN apt-get update -y
RUN apt-get install -y git build-essential mono-mcs mono-devel mono-xbuild mono-dmcs mono-reference-assemblies-4.0 libmono-system-data-datasetextensions4.0-cil libmono-system-web-extensions4.0-cil libmono-system-management4.0-cil libmono-system-xml-linq4.0-cil cmake dos2unix clang libfreetype6-dev libgtk-3-dev libmono-microsoft-build-tasks-v4.0-4.0-cil xdg-user-dirs
RUN apt-get install -y tzdata
ARG GIT_USER
ARG GIT_PASS
ENV GIT_USER=${GIT_USER}
ENV GIT_PASS=${GIT_PASS}
RUN git clone --verbose --progress https://$GIT_USER:$GIT_PASS@github.com/EpicGames/UnrealEngine.git
RUN cd UnrealEngine && ./Setup.sh
