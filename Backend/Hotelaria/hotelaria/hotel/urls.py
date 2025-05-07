from django.contrib import admin
from .views import *

urlpatterns = [
    path('/', view.Homepage, name='Homepage')
]
