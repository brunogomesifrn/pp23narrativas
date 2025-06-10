from django.forms import ModelForm
from .models import Tipo_Narrativa
from .models import Estilo_Narrativa

# Adicionar Narrativa

class Tipo_NarrativaForm(ModelForm):
    class Meta:
        model = Tipo_Narrativa
        fields = ['nome']

class Estilo_Narrativaform(ModelForm):
    class Meta:
        model = Estilo_Narrativa
        fields = ['nome']
