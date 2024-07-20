# Django Project with Docker, Celery, and Redis

## Описание проекта

Это пример проекта Django, который использует Docker для контейнеризации, Celery для обработки фоновых задач и Redis в качестве брокера сообщений для Celery.

## Структура проекта

myproject/
│
├── myproject/
│ ├── init.py
│ ├── settings.py
│ ├── urls.py
│ ├── wsgi.py
│
├── app/
│ ├── init.py
│ ├── admin.py
│ ├── apps.py
│ ├── migrations/
│ ├── models.py
│ ├── tests.py
│ ├── views.py
│
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── README.md

bash
Копировать код

## Требования

Перед началом работы убедитесь, что у вас установлены следующие программы:

- Docker
- Docker Compose

## Установка

1. Клонируйте репозиторий:

   ```bash
   git clone https://github.com/yourusername/yourproject.git
   cd yourproject
Создайте и активируйте виртуальное окружение:

bash
Копировать код
python -m venv .venv
source .venv/bin/activate
Установите зависимости:

bash
Копировать код
pip install -r requirements.txt
Запустите контейнеры:

bash
Копировать код
docker-compose up --build
Создание суперпользователя
После запуска контейнеров создайте суперпользователя для доступа к административной панели Django:

bash
Копировать код
docker-compose exec web python manage.py createsuperuser
Следуйте инструкциям для создания суперпользователя.

Доступ к административной панели
Административная панель Django будет доступна по адресу:

bash
Копировать код
http://localhost:8000/admin
Выполнение миграций
Если вы внесли изменения в модели, выполните миграции:

bash
Копировать код
docker-compose exec web python manage.py makemigrations
docker-compose exec web python manage.py migrate
Использование Celery
Celery уже настроен в проекте и готов к использованию. Запустите worker Celery следующим образом:

bash
Копировать код
docker-compose exec celery celery -A myproject worker --loglevel=info
Остановка контейнеров
Для остановки всех контейнеров используйте команду:

bash
Копировать код
docker-compose down
Полезные команды
Просмотр логов контейнеров:

bash
Копировать код
docker-compose logs web
docker-compose logs celery
docker-compose logs db
docker-compose logs redis
Пересборка контейнеров без использования кэша:

bash
Копировать код
docker-compose build --no-cache
docker-compose up
Выполнение команд внутри контейнера:

bash
Копировать код
docker-compose exec web python manage.py <command>
Лицензия
Этот проект лицензирован под MIT License.

go
Копировать код

Этот `README.md` предоставляет основную информацию о проекте, включая его структуру, инструкции по установке, запуску, созданию суперпользователя, выполнению миграций и использованию Celery. Не забудьте заменить ссылки и названия на ваши собственные, где это необходимо.