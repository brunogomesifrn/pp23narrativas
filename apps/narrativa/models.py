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
    tipo_narrativa = models.ForeignKey(Tipo_Narrativa, on_delete=models.CASCADE, null=True, blank=True)
    estilo_narrativa = models.ManyToManyField(Estilo_Narrativa)
    def __str__(self):
        return self.titulo