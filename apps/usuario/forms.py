from .models import Usuario
from django.contrib.auth.forms import UserCreationForm

class UsuarioForm(UserCreationForm):
    class Meta:
        model = Usuario
        fields = ['username',
                  'cpf', 
                  'nome_completo',
                  'email',
                  'password1',
                  'password2']