#View do Django

from django.shortcuts import render # importa a biblioteca de renderização de templates
from django.http import HttpResponse # retorna respostas http simples
from .models import * #Importa todos os modelos definidos no arquivo models.py 

# View 
def home(request):
    context = {}
    home = Homepage.objects.all(
        #Acessa todos os registros da tabela Homepage no banco de dados usando o ORM do Django
    )
    context["home"] = home

    return render(request, "homepage.html", context)