# deploy-com-docker


## 1. Primeiro - Clonar Repo

git clone https://github.com/Murilo-ZC/deploy-com-docker

## 2. Rodar na máquina ainda sem docker

### Cria a venv e ativa ela
python3 -m venv venv
source ./venv/bin.activate
### Instala as dependencias
python3 -m pip install -r requirements.txt
### Para rodar a aplicação
python3 -m fastapi run main.py

## 3. Rodar na máquina com o Docker

### Montar a imagem
docker build -t nicolinha:1.0 .
### Para rodar a imagem
docker run -it -p 8000:8000 nicolinha:1.0
