from django.contrib import admin
from django.urls import path, include

from .views import listar_localnarrativas, cadastrar_localnarrativas, editar_localnarrativas, remover_localnarrativas
from .views import listar_turnonarrativas, cadastrar_turnonarrativas, editar_turnonarrativas, remover_turnonarrativas
from .views import listar_periodonarrativas, cadastrar_periodonarrativas, editar_periodonarrativas, remover_periodonarrativas
from .views import listar_publicodestinos, cadastrar_publicodestinos, editar_publicodestinos, remover_publicodestinos
from .views import narrativas_dataset

urlpatterns = [

    # Trabalho Dataset
    path('narrativas_dataset/', narrativas_dataset, name='narrativas_dataset'),

    # Local_Narrativa
    path('listar_local/', listar_localnarrativas, name='listar_localnarrativas'),
    path('cadastrar_local/', cadastrar_localnarrativas, name='cadastrar_localnarrativas'),
    path('editar_local/<int:id>/', editar_localnarrativas, name='editar_localnarrativas'),
    path('remover_local/<int:id>', remover_localnarrativas, name='remover_localnarrativas'),

    # Turno_Narrativa
    path('listar_turno/', listar_turnonarrativas, name='listar_turnonarrativas'),
    path('cadastrar_turno/', cadastrar_turnonarrativas, name='cadastrar_turnonarrativas'),
    path('editar_turno/<int:id>/', editar_turnonarrativas, name='editar_turnonarrativas'),
    path('remover_turno/<int:id>', remover_turnonarrativas, name='remover_turnonarrativas'),

    # Periodo_Narrativa
    path('listar_periodo/', listar_periodonarrativas, name='listar_periodonarrativas'),
    path('cadastrar_periodo/', cadastrar_periodonarrativas, name='cadastrar_periodonarrativas'),
    path('editar_periodo/<int:id>/', editar_periodonarrativas, name='editar_periodonarrativas'),
    path('remover_periodo/<int:id>', remover_periodonarrativas, name='remover_periodonarrativas'),

    # Publico_Destino
    path('listar_publico/', listar_publicodestinos, name='listar_publicodestinos'),
    path('cadastrar_publico/', cadastrar_publicodestinos, name='cadastrar_publicodestinos'),
    path('editar_publico/<int:id>/', editar_publicodestinos, name='editar_publicodestinos'),
    path('remover_publico/<int:id>', remover_publicodestinos, name='remover_publicodestinos'),

]