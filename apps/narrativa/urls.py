from django.contrib import admin
from django.urls import path, include
from .views import listar_tiponarrativas, cadastrar_tiponarrativas, editar_tiponarrativas, remover_tiponarrativas
from .views import listar_estilonarrativas, cadastrar_estilonarrativas, editar_estilonarrativas, remover_estilonarrativas

urlpatterns = [
    # CRUD Tipo Narrativa

    # Tipo_Narrativa
    path('listar_tipo/', listar_tiponarrativas, name='listar_tiponarrativas'),
    path('cadastrar_tipo/', cadastrar_tiponarrativas, name='cadastrar_tiponarrativas'),
    path('editar_tipo/<int:id>/', editar_tiponarrativas, name='editar_tiponarrativas'),
    path('remover_tipo/<int:id>', remover_tiponarrativas, name='remover_tiponarrativas'),

    # Estilo_Narrativa
    path('listar_estilo/', listar_estilonarrativas, name='listar_estilonarrativas'),
    path('cadastrar_estilo/', cadastrar_estilonarrativas, name='cadastrar_estilonarrativa'),
    path('editar_estilo/<int:id>/', editar_estilonarrativas, name='editar_estilonarrativas'),
    path('remover_estilo/<int:id>', remover_estilonarrativas, name='remover_estilonarrativas'),

]