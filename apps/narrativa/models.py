from django.db import models
import os

# Se é conto, história, lenda.....
class Tipo_Narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

#se é humor, terror, aventura....
class Estilo_Narrativa(models.Model):
    nome = models.CharField('Nome', max_length=50)
    def __str__(self):
        return self.nome

def atualizar_nome_foto(instance, filename):
    path = "narrativas/"+instance.slug+"/anexo_"
    format = instance.slug + '.' + filename.split('.')[-1]
    return os.path.join(path, format)

def atualizar_nome_anexo(instance, filename):
    path = "narrativas/"+instance.slug+"/anexo_"
    format = 'anexo_' + instance.slug + '.' + filename.split('.')[-1]
    return os.path.join(path, format)


class Narrativa(models.Model):
    titulo = models.CharField('Titulo', max_length=300)
    descricao = models.TextField('Descricao')
    foto = models.ImageField('Foto', upload_to=atualizar_nome_foto, default='narrativas/default/default.png', null=True, blank=True)
    autor = models.CharField('Autor(es)', max_length=200)
    anexo = models.FileField('Anexo', upload_to=atualizar_nome_anexo, null=True, blank=True)
    link = models.CharField('Link', max_length=500, null=True, blank=True)
    slug = models.CharField(max_length=15, unique=True)
    tipo_narrativa = models.ForeignKey(Tipo_Narrativa, on_delete=models.PROTECT)
    estilo_narrativa = models.ManyToManyField(Estilo_Narrativa)
    def __str__(self):
        return self.titulo