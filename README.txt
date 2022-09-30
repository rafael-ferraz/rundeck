AMBIENTE DE AGENDAMENTO DE TAREFAS - RUNDECK

Esta imagem carrega a aplicação de automação do Rundeck (Community)e as ferramentas para execução das rotinas.

Por padrão, a imagem irá se conectar em um banco de dados externo PostgreSQL, cujo "setup" inicial já foi realizado. Para uma nova instalação ou demais configurações, verifique os comentários do Dockerfile.

Baseado no repositório jordan/rundeck: https://hub.docker.com/r/jordan/rundeck/


=====================================
Instruções - Subir container

1 - Entrar com o prompt de comando na pasta do Rundeck (Onde está o Dockerfile)
2 - Construir a imagem do Rundeck: "docker build -t rundeck ."
3 - Criar container a partir da imagem: "docker run -p 4440:4440 -d rundeck"

Para acessar o container: "docker exec -it <id container> bash"

=====================================

Outras ferramentas instaladas:

- Python 3 (e bibliotecas pandas, selenium e requests)
- Binários do Google Chrome

