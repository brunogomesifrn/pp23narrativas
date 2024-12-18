from django.urls import path
from .views import home, login, sobre

urlpatterns = [

    path('', home, name='home'),
    path('login/', login, name='login'),
    path('sobre/', sobre, name='sobre'),
]