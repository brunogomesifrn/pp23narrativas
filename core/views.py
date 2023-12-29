from django.shortcuts import render, redirect
from .models import Tipo_Narrativa
from .forms import Tipo_NarrativaForm
from .models import Estilo_Narrativa
from .forms import Estilo_Narrativaform
from .models import Local_Narrativa
from .forms import Local_Narrativaform
from .models import Turno_Narrativa
from .forms import Turno_Narrativaform
from .models import Periodo_Narrativa
from .forms import Periodo_Narrativaform
from .models import Publico_Destino
from .forms import Publico_Destinoform
from .models import Indicadores_Narrativa
import csv 
import pandas as pd 

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


# =========== CRUD Local_Narrativa ==============

def listar_localnarrativas(request):
    locais = Local_Narrativa.objects.all()
    contexto = {
        'todos_locais': locais
    }
    return render(request, 'locais_narrativas.html', contexto)


def cadastrar_localnarrativas(request):
    form = Local_Narrativaform(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('listar_localnarrativas')
    contexto = {
        'form_locais': form
    }
    return render(request, 'locais_narrativas_adicionar.html', contexto)


def editar_localnarrativas(request, id):
    local = Local_Narrativa.objects.get(pk=id)
    form = Local_Narrativaform(request.POST or None, instance=local)
    if form.is_valid():
        form.save()
        return redirect('listar_localnarrativas')
    contexto = {
        'form_locais': form
    }
    return render(request, 'locais_narrativas_adicionar.html', contexto)


def remover_localnarrativas(request, id):
    remover = Local_Narrativa.objects.get(pk=id)
    remover.delete()
    return redirect('listar_localnarrativas')


# =========== CRUD Turno_Narrativa ==============

def listar_turnonarrativas(request):
    turnos = Turno_Narrativa.objects.all()
    contexto = {
        'todos_turnos': turnos
    }
    return render(request, 'turnos_narrativas.html', contexto)


def cadastrar_turnonarrativas(request):
    form = Turno_Narrativaform(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('listar_turnonarrativas')
    contexto = {
        'form_turnos': form
    }
    return render(request, 'turnos_narrativas_adicionar.html', contexto)


def editar_turnonarrativas(request, id):
    turno = Turno_Narrativa.objects.get(pk=id)
    form = Turno_Narrativaform(request.POST or None, instance=turno)
    if form.is_valid():
        form.save()
        return redirect('listar_turnonarrativas')
    contexto = {
        'form_turnos': form
    }
    return render(request, 'turnos_narrativas_adicionar.html', contexto)


def remover_turnonarrativas(request, id):
    remover = Turno_Narrativa.objects.get(pk=id)
    remover.delete()
    return redirect('listar_turnonarrativas')


# =========== CRUD Periodo_Narrativa ==============

def listar_periodonarrativas(request):
    periodos = Periodo_Narrativa.objects.all()
    contexto = {
        'todos_periodos': periodos
    }
    return render(request, 'periodos_narrativas.html', contexto)


def cadastrar_periodonarrativas(request):
    form = Periodo_Narrativaform(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('listar_periodonarrativas')
    contexto = {
        'form_periodos': form
    }
    return render(request, 'periodos_narrativas_adicionar.html', contexto)


def editar_periodonarrativas(request, id):
    periodo = Periodo_Narrativa.objects.get(pk=id)
    form = Periodo_Narrativaform(request.POST or None, instance=periodo)
    if form.is_valid():
        form.save()
        return redirect('listar_periodonarrativas')
    contexto = {
        'form_periodos': form
    }
    return render(request, 'periodos_narrativas_adicionar.html', contexto)


def remover_periodonarrativas(request, id):
    remover = Periodo_Narrativa.objects.get(pk=id)
    remover.delete()
    return redirect('listar_periodonarrativas')


# =========== CRUD Publico_Destino ==============

def listar_publicodestinos(request):
    publicos = Publico_Destino.objects.all()
    contexto = {
        'todos_publicos': publicos
    }
    return render(request, 'publicos_destinos.html', contexto)


def cadastrar_publicodestinos(request):
    form = Publico_Destinoform(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('listar_publicodestinos')
    contexto = {
        'form_publicos': form
    }
    return render(request, 'publicos_destinos_adicionar.html', contexto)


def editar_publicodestinos(request, id):
    publico = Publico_Destino.objects.get(pk=id)
    form = Publico_Destinoform(request.POST or None, instance=publico)
    if form.is_valid():
        form.save()
        return redirect('listar_publicodestinos')
    contexto = {
        'form_publicos': form
    }
    return render(request, 'publicos_destinos_adicionar.html', contexto)


def remover_publicodestinos(request, id):
    remover = Publico_Destino.objects.get(pk=id)
    remover.delete()
    return redirect('listar_publicodestinos')

# =========== CRUD Narrativa ==============
#### Esse deixar para fazer com o prof ###




# =========== GERAÇÃO DE DATASET ===============

def narrativas_dataset(request):
    indicadores = Indicadores_Narrativa.objects.all()

    narrativas = {}
    titulos = []
    tipos = []

    # Estilo
    estilos = []
    qtd_estilos = []
    contador_estilo = 0
    texto_estilo = ''

    qtd_personagens_reais = []
    qtd_personagens_imaginarios = []
    qtd_personagens_criancas = []
    qtd_personagens_adultos = []
    qtd_personagens_idosos = []
    qtd_personagens_animais = []

    # Locais
    locais = []
    qtd_locais = []
    contador_locais = 0
    texto_locais = ''

    # Turnos
    turnos = []
    qtd_turnos = []
    contador_turnos = 0
    texto_turnos = ''

    # Publicos
    publicos = []
    qtd_publicos = []
    contador_publicos = 0
    texto_publicos = ''

    periodos = []
    
    '''
    periodo = models.ForeignKey(Periodo_Narrativa, on_delete=models.PROTECT)
    '''


    for indicador in indicadores:
        titulos.append(indicador.narrativa.titulo)
        tipos.append(indicador.narrativa.tipo_narrativa.nome)
        qtd_personagens_reais.append(indicador.qtd_personagens_reais)
        qtd_personagens_imaginarios.append(indicador.qtd_personagens_imaginarios)
        qtd_personagens_criancas.append(indicador.qtd_personagens_criancas)
        qtd_personagens_adultos.append(indicador.qtd_personagens_adultos)
        qtd_personagens_idosos.append(indicador.qtd_personagens_idosos)
        qtd_personagens_animais.append(indicador.qtd_personagens_animais)
        periodos.append(indicador.periodo.nome)
        
        # Estilo Narrativa * para *
        texto_estilo = ''
        contador_estilo = 0
        for estilo in indicador.narrativa.estilo_narrativa.all():
            texto_estilo += estilo.nome
            contador_estilo += 1
            if(contador_estilo < indicador.narrativa.estilo_narrativa.count()):
                texto_estilo += ';'
        estilos.append(texto_estilo)
        qtd_estilos.append(contador_estilo)

        # Locais * para *
        texto_locais = ''
        contador_local = 0
        for local in indicador.locais.all():
            texto_locais += local.nome
            contador_local += 1
            if(contador_local < indicador.locais.count()):
                texto_locais += ';'
        locais.append(texto_locais)
        qtd_locais.append(contador_local)

        # Turnos * para *
        texto_turnos = ''
        contador_turno = 0
        for turno in indicador.turnos.all():
            texto_turnos += turno.nome
            contador_turno += 1
            if(contador_turno < indicador.turnos.count()):
                texto_turnos += ';'
        turnos.append(texto_turnos)
        qtd_turnos.append(contador_turno)

         # Publicos * para *
        texto_publicos = ''
        contador_publico = 0
        for publico in indicador.publicos.all():
            texto_publicos += publico.nome
            contador_publico += 1
            if(contador_publico < indicador.publicos.count()):
                texto_publicos += ';'
        publicos.append(texto_publicos)
        qtd_publicos.append(contador_publico)


    narrativas['Titulo'] = titulos
    narrativas['Tipo'] = tipos
    
    narrativas['Qtd Estilo'] = qtd_estilos
    narrativas['Estilos'] = estilos
    
    narrativas['Qtd Personagens Reais'] = qtd_personagens_reais
    narrativas['Qtd Personagens Imaginarios'] = qtd_personagens_imaginarios
    narrativas['Qtd Personagens Criancas'] = qtd_personagens_criancas
    narrativas['Qtd Personagens Adultos'] = qtd_personagens_adultos
    narrativas['Qtd Personagens Idosos'] = qtd_personagens_idosos
    narrativas['Qtd Personagens Animais'] = qtd_personagens_animais

    narrativas['Qtd Locais'] = qtd_locais
    narrativas['Locais'] = locais

    narrativas['Qtd Turnos'] = qtd_turnos
    narrativas['Turnos'] = turnos

    narrativas['Qtd Publicos'] = qtd_publicos
    narrativas['Publicos'] = publicos

    narrativas['Periodo'] = periodos

    narrativas = pd.DataFrame(narrativas)


    narrativas.to_csv('./Narrativas.csv', index = None) 

    '''
    for indicador in indicadores:
        dicionario[indicador.narrativa.titulo] = [indicador.qtd_personagens_reais, indicador.qtd_personagens_imaginarios]
        lista_narrativas.append(dicionario)
        with open('Narrativas.csv', 'w') as csvfile: 
            writer = csv.DictWriter(csvfile) 
            writer.writeheader() 
            #writer.writerows(lista_narrativas) 
            writer.writerows("Teste") 
    '''
    contexto = {
        'indicadores': indicadores,
        'narrativas_dict': narrativas.to_dict(),
        'narrativas': narrativas.to_csv()
    }
    return render(request, 'narrativas_dataset.html', contexto)
