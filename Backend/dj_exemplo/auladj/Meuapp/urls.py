from django.urls import path
from . import views, include 

urlpatterns = [
    path('', views.home, name = 'homepage')
]