from django.urls import path
from .views import registro, autenticacao, desconectar

urlpatterns = [
    path('registro/', registro, name='registro'),
    path('login/', autenticacao, name='login'),
    path('desconectar/', desconectar, name='desconectar'),
]
