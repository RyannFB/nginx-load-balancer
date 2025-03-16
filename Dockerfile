# Imagem oficial Ngnix como base
FROM nginx:latest

# Instala pacotes necessários
RUN apt update && \
    apt install -y iputils-ping curl

# Remove o arquivo de configuração padrão do nginx    
RUN rm -f /etc/nginx/conf.d/default.conf

# Copia a configuração personalizada
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

# Expor na porta 8080
EXPOSE 8080
