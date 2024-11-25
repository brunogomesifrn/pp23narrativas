from django.contrib import admin
from django.urls import path, include
from.views import dashboard, grafico_personagens

urlpatterns = [

    path('', dashboard, name='dashboard'),
    path('grafico_personagens', grafico_personagens, name='grafico_personagens'),
]