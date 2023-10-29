from os import link
from django.db import models

class Narrativa(models.Model):
    titulo = models.CharField('Titulo',max_length=100)
    descricao = models.CharField('Descrição',max_length=150)
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




