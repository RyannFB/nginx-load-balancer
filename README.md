Projeto de Infraestrutura com Docker, Vagrant e Ansible

Este repositório contém um projeto de infraestrutura configurado para criar e gerenciar um ambiente com um balanceador de carga Nginx personalizado, utilizando Docker, Vagrant e Ansible.

Objetivo

O objetivo deste projeto é configurar um balanceador de carga usando o Nginx com uma imagem personalizada, utilizando Docker. Além disso, o ambiente é provisionado utilizando Vagrant e Ansible para garantir a automação da infraestrutura.

Tecnologias Utilizadas

Docker: Criação e gerenciamento de containers.

Nginx: Servidor Web configurado como balanceador de carga.

Vagrant: Gerenciamento de máquinas virtuais para provisionar o ambiente.

Ansible: Automatização de configurações e provisionamento do ambiente.

Docker Compose: Orquestração de containers Docker.

Estrutura do Repositório

Dockerfile: Arquivo para construção da imagem personalizada do Nginx.

Vagrantfile: Arquivo de configuração do Vagrant para provisionar o ambiente.

docker-compose.yml: Arquivo de orquestração para iniciar os containers Docker.

nginx.conf: Arquivo de configuração do Nginx como balanceador de carga.

playbook_ansible.yml: Playbook do Ansible para provisionar e configurar o ambiente.

Requisitos

Imagem Personalizada do Nginx

Baseada na imagem oficial do Nginx.

Configurada para realizar Load Balance de Camada 4, redirecionando requisições recebidas na porta 8080 para o container webserver na porta 80.

Inclui pacotes adicionais: ping e curl.

Docker Compose

Define três containers:

webproxy: Imagem personalizada do Nginx configurada para balanceamento de carga.

webserver: Utiliza a imagem oficial do WordPress.

database: Utiliza a imagem oficial do MySQL 5.7.

Volumes persistentes:

app: Volume persistente para o container webserver.

my: Volume persistente para o container database.

Network:

Todos os containers fazem parte da network wordpress.

Exposição de Portas:

Apenas o container webproxy é exposto externamente na porta 8080.

Instruções de Uso

1. Clonar o repositório

 git clone  https://github.com/RyannFB/nginx-load-balancer.git
 
2. Construir a imagem Docker personalizada

 docker build -t custom_nginx .

3. Subir o ambiente com Docker Compose

 docker-compose up -d

4. Provisionar as VMs com Vagrant

 vagrant up

Funcionamento

O projeto cria um balanceador de carga Nginx configurado por meio do arquivo nginx.conf, que é disponibilizado através de uma imagem Docker personalizada definida no Dockerfile. A infraestrutura é provisionada com Vagrant e configurada com Ansible para garantir que todos os serviços estejam rodando corretamente.
O webproxy age como um ponto de entrada que distribui as requisições para o webserver que roda o WordPress.
