from django.shortcuts import render
from apps.indicador.models import Indicadores_Narrativa, Turno_Narrativa
from django.db.models import Sum

# =========== DASHBOARD ==============

def dashboard(request):
    return render(request, 'dashboard/index.html')

def grafico_personagens(request):
    indicadores = Indicadores_Narrativa.objects.all()
    #qtd_reais = Indicadores_Narrativa.objects.all().aaggregate(sum('qtd_personagens_reais'))['total']
    
    qtd_reais = 0
    qtd_imaginarios = 0
    for indicador in list(indicadores):
        qtd_reais += indicador.qtd_personagens_reais
        qtd_imaginarios += indicador.qtd_personagens_imaginarios
        
    contexto = {
        'indicadores': indicadores,
        'qtd_reais': qtd_reais,
        'qtd_imaginarios': qtd_imaginarios
    }
    return render(request, 'dashboard/grafico_personagens.html', contexto)

def grafico_turnos(request):
    indicadores = Indicadores_Narrativa.objects.all()
    turnos = Turno_Narrativa.objects.all()

    turnos_count={}
    
    for turno in turnos:
        turnos_count[turno.nome] = 0
        
    for indicador in list(indicadores):
        for turno in indicador.turnos.all():
            turnos_count[turno.nome] += 1
    
    contexto = {
        'turnos': turnos_count
    }
    
    return render(request, 'dashboard/turnos.html', contexto)

'''
def grafico_personagens(request):
    # Obtendo todos os indicadores
    indicadores = Indicadores_Narrativa.objects.all()

    
    
    # Calculando o total de personagens reais e imaginários
    totais = indicadores.aggregate(
        qtd_reais=Sum('qtd_personagens_reais'),
        qtd_imaginarios=Sum('qtd_personagens_imaginarios')
    )

    # Contexto para o template
    contexto = {
        'indicadores': indicadores,
        'qtd_reais': totais.get('qtd_reais'),
        'qtd_imaginarios': totais.get('qtd_imaginarios'),
    }
    return render(request, 'dashboard/grafico_personagens.html', contexto)
'''

def personagens_imaginarios(request):
    # Obtendo o total de personagens imaginários
    qtd_imaginarios = Indicadores_Narrativa.objects.aggregate(
        total_imaginarios=Sum('qtd_personagens_imaginarios')
    ).get('total_imaginarios', 0) or 0

    # Contexto para o template
    contexto = {
        'qtd_imaginarios': qtd_imaginarios,
    }
    return render(request, 'dashboard/grafico_personagens.html', contexto)


def personagens_reais(request):
    # Obtendo o total de personagens reais
    qtd_reais = Indicadores_Narrativa.objects.aggregate(
        total_reais=Sum('qtd_personagens_reais')
    ).get('total_reais', 0) or 0

    # Contexto para o template
    contexto = {
        'qtd_reais': qtd_reais,
    }
    return render(request, 'dashboard/grafico_personagens.html', contexto)


def tipo(request):
    # Obtendo o total de personagens reais
    qtd_reais = Indicadores_Narrativa.objects.aggregate(
        total_reais=Sum('qtd_personagens_reais')
    ).get('total_reais', 0) or 0

    # Contexto para o template
    contexto = {
        'qtd_reais': qtd_reais,
    }
    return render(request, 'dashboard/tipo.html', contexto)

def grafico_narrativas(request):
    # Caminho do CSV
    
    # Carregar os dados do CSV
    labels = []
    data = []
    with open(caminho_csv, newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            labels.append(row['Tipo'])
            data.append(int(row['Quantidade']))

    # Contexto para o template
    contexto = {
        'labels': labels,
        'data': data,
    }
    return render(request, 'dashboard/grafico_narrativas.html', contexto)
