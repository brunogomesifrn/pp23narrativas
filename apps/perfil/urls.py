from django.contrib import admin
from django.urls import path, include
from.views import perfil

urlpatterns = [
    path('', perfil, name='perfil'),
    
]