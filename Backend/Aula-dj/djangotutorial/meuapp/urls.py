#definir URLs e associá-las a views
from django.urls import path
from . import views

#Define a URL principal do site
urlpatterns = [
    path("", views.home, name='homepage')
]