from os import link
from django.db import models

class Tipo_Narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

class Estilo_Narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

class Narrativa(models.Model):
    titulo = models.CharField('Titulo', max_length=300)
    descricao = models.TextField('Descricao')
    foto = models.ImageField('Foto', null=True)
    autor = models.CharField('Autor(es)', max_length=200)
    anexo = models.FileField('Anexo', null=True)
    link = models.CharField('Link', null=True, max_length=500)
    tipo_narrativa = models.ForeignKey(Tipo_Narrativa, on_delete=models.PROTECT)
    estilo_narrativa = models.ManyToManyField(Estilo_Narrativa)
    def __str__(self):
        return self.titulo

class Local_Narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

class Turno_Narativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

class Periodo_Narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

class Publico_Destino(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

class Indicadores_Narrativa(models.Model):
    qtd_Personagens_total = models.IntegerField('Quantidade de Personagens Total')
    qtd_Personagens_reais = models.IntegerField('Quantidade de Personagens Reais')
    qtd_Personagens_imaginarios = models.IntegerField('Quantidade de Personagens Imaginarios')
    qtd_Personagens_criancas = models.IntegerField('Quantidade de Personagens Crianças')
    qtd_Personagens_adultos = models.IntegerField('Quantidade de Personagens Adultos')
    qtd_Personagens_idosos = models.IntegerField('Quantidade de Personagens Idosos')
    narrativa = models.ForeignKey(Narrativa, on_delete=models.PROTECT)
    locais = models.ManyToManyField(Local_Narrativa)
    turnos = models.ManyToManyField(Turno_Narativa)
    publicos = models.ManyToManyField(Publico_Destino)
    periodo = models.ForeignKey(Periodo_Narrativa, on_delete=models.PROTECT)
    def __str__(self):
        return "Indicadores da Narrativa: ",self.narrativa.titulo






    


