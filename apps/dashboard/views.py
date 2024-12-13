from django.shortcuts import render
from apps.indicador.models import Indicadores_Narrativa

# =========== DASHBOARD ==============

def dashboard(request):
    return render(request, 'index_dashboard.html')


def grafico_personagens(request):
    indicadores = Indicadores_Narrativa.objects.all()
    #qtd_reais = Indicadores_Narrativa.objects.all().aaggregate(sum('qtd_personagens_reais'))['total']
    
    qtd_reais = 0
    qtd_imaginarios = 0
    for indicador in indicadores:
        qtd_reais += indicador.qtd_personagens_reais
        qtd_imaginarios += indicador.qtd_personagens_imaginarios
        
    contexto = {
        'indicadores': indicadores,
        'qtd_reais': qtd_reais,
        'qtd_imaginarios': qtd_imaginarios
    }
    return render(request, 'grafico_personagens.html', contexto)
