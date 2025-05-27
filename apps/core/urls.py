from django.urls import path
from .views import home, login, sobre, upload, narrativas

urlpatterns = [

    path('', home, name='home'),
    path('login/', login, name='login'),
    path('sobre/', sobre, name='sobre'),
    path('upload/', upload, name='upload'),
    path('narrativas/', narrativas, name='narrativas')
]