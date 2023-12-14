"""
URL configuration for narrativas project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from core.views import listar_tiponarrativas, cadastrar_tiponarrativas, editar_tiponarrativas, remover_tiponarrativas

from core.views import narrativas

urlpatterns = [
    path('listar_tipo/', listar_tiponarrativas, name='listar_tiponarrativas'),
    path('cadastrar_tipo/', cadastrar_tiponarrativas, name='cadastrar_tiponarrativas'),
    path('editar_tipo/<int:id>/', editar_tiponarrativas, name='editar_tiponarrativas'),
    path('remover_tipo/<int:id>', remover_tiponarrativas, name='remover_tiponarrativas'),
    path('admin/', admin.site.urls),
    path('narrativas/', narrativas, name='narrativas'),
]
