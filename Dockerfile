# Usar a imagem oficial do Nginx
FROM nginx:latest

# Copiar o arquivo nginx.conf para o diretório correto dentro do container
COPY nginx.conf /etc/nginx/nginx.conf

# Remover o arquivo de configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf


# Instalar pacotes necessários
RUN apt update && apt install -y iputils-ping curl

# Expor a porta 8080
EXPOSE 8080

# Iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
