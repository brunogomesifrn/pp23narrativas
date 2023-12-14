from django.shortcuts import render, redirect
from .models import Tipo_Narrativa
from .forms import Tipo_NarrativaForm
from .models import Indicadores_Narrativa
import csv 


def narrativas(request):
    indicadores = Indicadores_Narrativa.objects.all()
    lista_narrativas = []
    dicionario = {}
    chave = ''
    valores = ''
    for indicador in indicadores:
        dicionario[indicador.narrativa.titulo] = [indicador.qtd_personagens_reais, indicador.qtd_personagens_imaginarios]
        lista_narrativas.append(dicionario)
        with open('Narrativas.csv', 'w') as csvfile: 
            writer = csv.DictWriter(csvfile) 
            writer.writeheader() 
            #writer.writerows(lista_narrativas) 
            writer.writerows("Teste") 
    contexto = {
        'indicadores': indicadores
    }
    return render(request, 'narrativas1.html', contexto)

def listar_tiponarrativas(request):
    tipos = Tipo_Narrativa.objects.all()
    contexto = {
        'todos_tipos': tipos
    }
    
    return render(request, 'narrativas1.html', contexto)

def cadastrar_tiponarrativas(request):
    form = Tipo_NarrativaForm(request.POST or None)

    if form.is_valid():
        form.save()
        return redirect('listar_tiponarrativas')

    contexto = {
        'form_tipos': form
    }

    return render(request, 'narrativas1_cadastrar.html', contexto)

def editar_tiponarrativas(request, id):
    editar = Tipo_Narrativa.objects.get(pk=id)

    form = Tipo_NarrativaForm(request.POST or None, instance=Tipo_Narrativa)

    if form.is_valid():
        form.save()
        return redirect('listar_tiponarrativas')
    
    contexto = {
        'form_tipos': form
    }

    return render(request, 'narrativas1_cadastrar.html', contexto)

def remover_tiponarrativas(request):
    remover =  Tipo_Narrativa.objects.get(pk=id)
    Tipo_Narrativa.delete()
    return redirect('listar_tiponarrativas')
