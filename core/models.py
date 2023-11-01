from os import link
from django.db import models

class Narrativa(models.Model):
    titulo = models.CharField('Titulo',max_length=100)
    descricao = models.CharField('Descricao',max_length=150)
    foto = models.ImageField('Foto')
    autor = models.CharField('Autor', max_length=50)
    anexo = models.CharField('Anexo')
    link = models.CharField('Link')

    def _str_(self):
        return "{} ({})".format(self.titulo, self.descricao, 
                                self.foto, self.autor, self.anexo, self.link)
    
class Indicadores_narrativa(models.Model):
    qtd_Personagens_total = models.IntegerField('Quantidade de Personagens Total ')
    qtd_Personagens_reais = models.IntegerField('Quantidade de Personagens Reais ')
    qtd_Personagens_imaginarios = models.IntegerField('Quantidade de Personagens Imaginarios')
    qtd_Personagens_criancas = models.IntegerField('Quantidade de Personagens Crianças ')
    qtd_Personagens_idosos = models.IntegerField('Quantidade de Personagens Idosos')

class Tipos_narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    conto = models.CharField('Conto', max_length=50)
    lenda = models.CharField('Lenda', max_length=100)
    
class Estilo_narrativa(models.Model):
    acao = models.TextField('Acao', max_length=150)
    aventura = models.TextField('Aventura', max_length=150)
    terror = models.TextField('Terror', max_length=150)

class Locais_narrativas(models.Model):
    rural = models.CharField('Rural', max_length=50)
    urbano = models.CharField('Urbano', max_length=50)
    litoral = models.CharField('Litoral', max_length=50)
    mangue = models.CharField('Mangue', max_length=50)

class turno_narativa(models.Model):
    dia = models.CharField('Dia', max_length=50)
    noite = models.CharField('Noite', max_length=50)

class periodo_narrativa(models.Model):
    ano = models.DateField('Ano', max_length=50)
    seculo = models.DateField('Seculo', max_length=50)

class publico_destino(models.Model):
    infantil = models.CharField('Infantil', max_length=100)
    adulto = models.CharField('Adulto', max_length=100)
    idoso = models.CharField('Idoso', max_length=100)