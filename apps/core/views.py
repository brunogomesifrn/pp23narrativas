from django.shortcuts import render, redirect


def home(request):
    return render(request, 'index.html')

def login(request):
    return render(request, 'login.html')

def sobre(request):
    return render(request, 'sobre.html')
