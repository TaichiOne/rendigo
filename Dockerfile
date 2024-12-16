# Используем официальный образ Python
FROM python:3.12

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /

# Копируем файл requirements.txt в контейнер
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y redis-server

# Копируем все файлы проекта в контейнер
COPY . .

# Запускаем миграции и стартуем сервер
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8001"]
