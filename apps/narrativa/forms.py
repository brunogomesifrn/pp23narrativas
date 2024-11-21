from django.forms import ModelForm
from .models import Tipo_Narrativa
from .models import Estilo_Narrativa
from .models import Local_Narrativa
from .models import Turno_Narrativa
from .models import Periodo_Narrativa
from .models import Publico_Destino

class Tipo_NarrativaForm(ModelForm):
    class Meta:
        model = Tipo_Narrativa
        fields = ['nome']

class Estilo_Narrativaform(ModelForm):
    class Meta:
        model = Estilo_Narrativa
        fields = ['nome']

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
        