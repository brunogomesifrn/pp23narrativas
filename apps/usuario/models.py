from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class Usuario(AbstractUser):
    cpf = models.CharField('CPF', max_length=11)
    nome_completo = models.CharField('Nome Completo', max_length=50)
    data_nacimento = models.DateField('Data de Nacimento')
    telefone = models.CharField('Telefone', max_length=15, null=True, blank=True)