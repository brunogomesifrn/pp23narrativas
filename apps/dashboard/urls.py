from django.contrib import admin
from django.urls import path, include
from .views import dashboard, grafico_personagens, personagens_imaginarios, personagens_imaginarios, personagens_reais, tipo

urlpatterns = [

    path('', dashboard, name='dashboard'),
    path('grafico_personagens', grafico_personagens, name='grafico_personagens'),
    path('grafico_personagens', grafico_personagens, name='grafico_personagens'),
    path('personagens_imaginarios', personagens_imaginarios, name='personagens_imaginarios'),
    path('personagens_reais', personagens_reais, name='personagens_reais'),
    path('tipo', tipo, name='tipo'),
    
]