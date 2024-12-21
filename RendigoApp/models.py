from django.db import models

class ContactInfo(models.Model):
    title = models.CharField(max_length=200)  # Заголовок страницы
    description = models.TextField()  # Описание
    phone = models.CharField(max_length=20)  # Телефон
    address = models.CharField(max_length=200)  # Адрес
    email = models.EmailField(max_length=120, blank=True, null=False, default='')  # Почта
    longitude = models.FloatField()  # Долгота
    latitude = models.FloatField()  # Широта
    web_page_url = models.URLField()  # URL веб-страницы

    def __str__(self):
        return self.title