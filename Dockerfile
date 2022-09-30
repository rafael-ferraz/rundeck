FROM jordan/rundeck
MAINTAINER Rafael Ferraz "rafaelferraz.df@gmail.com"

# URL SERVER RUNDECK
ENV EXTERNAL_SERVER_URL=http://localhost:4440

# Base do rundeck pré-definida? (marcar como "true" se o database externo já estiver configurado para o rundeck)

ENV SKIP_DATABASE_SETUP=true

# VARIÁVEIS PARA APONTAMENTO AO DB

ENV NO_LOCAL_MYSQL=true
ENV RUNDECK_STORAGE_PROVIDER=db
ENV RUNDECK_PROJECT_STORAGE_TYPE=db
ENV DATABASE_URL=jdbc:postgresql://<ip or hostname>:5432/dbs_rundeck
ENV DATABASE_ADMIN_USER=user_db_admin
ENV DATABASE_ADMIN_PASSWORD=password_db_admin
ENV RUNDECK_USER=user_db_rundeck
ENV RUNDECK_PASSWORD=password_db_rundeck
ENV DATABASE_DRIVER=org.postgresql.Driver

# ATUALIZA REPOSITÓRIO LINUX
RUN apt update -y
RUN apt upgrade -y

# INSTALA FERRAMENTAS E BIBLIOTECAS
RUN apt install -y curl git python3 python3-pip wget
RUN pip install pandas requests selenium webdriver-manager

# INSTALA OS BINÁRIOS DO GOOGLE CHROME

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/
RUN apt install -y /tmp/google-chrome-stable_current_amd64.deb

# DEFINE O USUÁRIO DO RUNDECK COMO SUDOER

RUN echo "rundeck ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers