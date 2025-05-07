from django.shortcuts import render
from.models import *

def Homepage(request):
   context = {}
   dados_home = homepage.objects.all()
   context['dados_home'] = dados_home
   return render(request, 'homepage.html')