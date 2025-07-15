from django.shortcuts import render, redirect, get_object_or_404
from .models import Tipo_Narrativa, Estilo_Narrativa, Narrativa
from .forms import Tipo_NarrativaForm, Estilo_Narrativaform, NarrativaForm


# =========== CRUD Narrativa ==============

def listar_narrativas(request):
    narrativas = Narrativa.objects.all()
    contexto = {
        'todas_narrativas': narrativas
    }
    return render(request, 'narrativas/narrativas.html', contexto)

def cadastrar_narrativa(request):
    form = NarrativaForm(request.POST or None, request.FILES or None)
    if form.is_valid():
        form.save()
        return redirect('listar_narrativas')
    contexto = {
        'form_narrativa': form
    }
    return render(request, 'narrativas/narrativas_adicionar.html', contexto)

def editar_narrativa(request, id):
    narrativa = get_object_or_404(Narrativa, pk=id) # Usando get_object_or_404 para melhor tratamento de erros
    form = NarrativaForm(request.POST or None, request.FILES or None, instance=narrativa)
    if form.is_valid():
        form.save()
        return redirect('listar_narrativas')
    contexto = {
        'form_narrativa': form
    }
    return render(request, 'narrativas/narrativas_adicionar.html', contexto)

def remover_narrativa(request, id):
    narrativa_remover = get_object_or_404(Narrativa, pk=id) # Usando get_object_or_404
    narrativa_remover.delete()
    return redirect('listar_narrativas')





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



