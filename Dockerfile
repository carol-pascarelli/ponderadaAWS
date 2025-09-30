# Use a imagem oficial do Python como base
FROM python:3.11-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de requisitos primeiro para aproveitar o cache do Docker
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o resto do código da aplicação
COPY . .

# Expõe a porta que a aplicação vai usar
EXPOSE 8000

# Comando para executar a aplicação
CMD ["fastapi", "run", "--host", "0.0.0.0", "--port", "8000", "main.py"]
