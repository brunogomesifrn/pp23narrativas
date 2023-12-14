from django.shortcuts import render, redirect
from .models import Tipo_Narrativa
from .forms import Tipo_NarrativaForm
from .models import Indicadores_Narrativa
import csv 
import pandas as pd 

def narrativas(request):
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
