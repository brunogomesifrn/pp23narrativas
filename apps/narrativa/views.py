from django.shortcuts import render, redirect, get_object_or_404
from .models import Tipo_Narrativa
from .forms import Tipo_NarrativaForm
from .models import Estilo_Narrativa
from .forms import Estilo_Narrativaform
from .models import Narrativa

# =========== CRUD Tipo Narrativa ==============

def listar_tiponarrativas(request):
    tipos = Tipo_Narrativa.objects.all()
    contexto = {
        'todos_tipos': tipos
    }
    return render(request, 'tipos_narrativas.html', contexto)

def cadastrar_tiponarrativas(request):
    form = Tipo_NarrativaForm(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('listar_tiponarrativas')
    contexto = {
        'form_tipos': form
    }
    return render(request, 'tipos_narrativas_adicionar.html', contexto)


def editar_tiponarrativas(request, id):
    tipo = Tipo_Narrativa.objects.get(pk=id)
    form = Tipo_NarrativaForm(request.POST or None, instance=tipo)
    if form.is_valid():
        form.save()
        return redirect('listar_tiponarrativas')
    contexto = {
        'form_tipos': form
    }
    return render(request, 'tipos_narrativas_adicionar.html', contexto)


def remover_tiponarrativas(request, id):
    remover =  Tipo_Narrativa.objects.get(pk=id)
    remover.delete()
    return redirect('listar_tiponarrativas')


# =========== CRUD Estilo Narrativa ==============

def listar_estilonarrativas(request):
    estilos = Estilo_Narrativa.objects.all()
    contexto = {
        'todos_estilos': estilos
    }
    return render(request, 'estilos_narrativas.html', contexto)


def cadastrar_estilonarrativas(request):
    form = Estilo_Narrativaform(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('listar_estilonarrativas')
    contexto = {
        'form_estilos': form
    }
    return render(request, 'estilos_narrativas_adicionar.html', contexto)


def editar_estilonarrativas(request, id):
    estilo = Estilo_Narrativa.objects.get(pk=id)
    form = Estilo_Narrativaform(request.POST or None, instance=estilo)
    if form.is_valid():
        form.save()
        return redirect('listar_estilonarrativas')
    contexto = {
        'form_estilos': form
    }
    return render(request, 'estilos_narrativas_adicionar.html', contexto)


def remover_estilonarrativas(request, id):
    remover = Estilo_Narrativa.objects.get(pk=id)
    remover.delete()
    return redirect('listar_estilonarrativas')



# =========== CRUD Narrativa ==============

def listar_narrativas(request):
    narrativas = Narrativa.objects.all()
    return render(request, 'narrativas/narrativas.html', {'narrativas': narrativas})

def registrar_narrativa(request, id=None):
    narrativa = None if id is None else get_object_or_404(Narrativa, id=id)
    
    if request.method == 'POST':
        titulo = request.POST['titulo']
        descricao = request.POST['descricao']
        
        if narrativa:
            narrativa.titulo = titulo
            narrativa.descricao = descricao
            narrativa.save()
        else:
            Narrativa.objects.create(titulo=titulo, descricao=descricao)
        
        return redirect('listar_narrativas')
    
    return render(request, 'narrativas/narrativas_registrar.html', {'narrativa': narrativa})

def excluir_narrativa(request, id):
    narrativa = get_object_or_404(Narrativa, id=id)
    narrativa.delete()
    return redirect('listar_narrativas')