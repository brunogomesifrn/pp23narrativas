from django.forms import ModelForm
from .models import Tipo_Narrativa

class Tipo_NarrativaForm(ModelForm):
    class Meta:
        model = Tipo_Narrativa
        fields = ['nome']
