from django.forms import ModelForm
from .models import Local_Narrativa
from .models import Turno_Narrativa
from .models import Periodo_Narrativa
from .models import Publico_Destino

class Local_Narrativaform(ModelForm):
    class Meta:
        model = Local_Narrativa
        fields = ['nome']

class Turno_Narrativaform(ModelForm):
    class Meta:
        model = Turno_Narrativa
        fields = ['nome']

class Periodo_Narrativaform(ModelForm):
    class Meta:
        model = Periodo_Narrativa
        fields = ['nome']
    
class Publico_Destinoform(ModelForm):
    class Meta:
        model = Publico_Destino
        fields = ['nome']
        