from django.forms import ModelForm
from django import forms
from .models import Tipo_Narrativa, Estilo_Narrativa,  Narrativa

# Adicionar Narrativa

class NarrativaForm(ModelForm):
    class Meta:
        model = Narrativa
        fields = '__all__' 
        widgets = {
            'tipo_narrativa': forms.RadioSelect(),
            'estilo_narrativa': forms.CheckboxSelectMultiple(),
        }



class Tipo_NarrativaForm(ModelForm):
    class Meta:
        model = Tipo_Narrativa
        fields = ['nome']

class Estilo_Narrativaform(ModelForm):
    class Meta:
        model = Estilo_Narrativa
        fields = ['nome']
