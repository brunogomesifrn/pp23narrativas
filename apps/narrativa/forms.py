from django.forms import ModelForm
from .models import Tipo_Narrativa, Estilo_Narrativa,  Narrativa

# Adicionar Narrativa

class NarrativaForm(ModelForm):
    class Meta:
        model = Narrativa
        fields = '__all__' 

class Tipo_NarrativaForm(ModelForm):
    class Meta:
        model = Tipo_Narrativa
        fields = ['nome']

class Estilo_Narrativaform(ModelForm):
    class Meta:
        model = Estilo_Narrativa
        fields = ['nome']
