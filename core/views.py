from django.shortcuts import render
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
    return render(request, 'narrativas.html', contexto)