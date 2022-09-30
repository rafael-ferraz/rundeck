AMBIENTE DE AGENDAMENTO DE TAREFAS

Esta imagem carrega a aplicação de automação do Rundeck (Community) e as ferramentas para execução das rotinas. Baseado no repositório jordan/rundeck: https://hub.docker.com/r/jordan/rundeck/

=====================================
Instruções - Subir container

1 - Entrar com o prompt de comando na pasta do Rundeck (Onde está o Dockerfile)
2 - Construir a imagem do Rundeck: "docker build -t rundeck ."
3 - Criar container a partir da imagem: "docker run -p 4440:4440 -d rundeck"

Para acessar o container: "docker exec -it <id container> bash"
