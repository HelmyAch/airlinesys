# Dockerfile
FROM python:3.12-slim

# Crée un dossier pour l'app
WORKDIR /app

# Copie les fichiers du projet
COPY . /app

# Installe pip et les dépendances
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Ouvre le port 8000
EXPOSE 8000

# Commande de démarrage
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
