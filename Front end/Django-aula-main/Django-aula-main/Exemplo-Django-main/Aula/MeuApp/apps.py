from django.apps import AppConfig


class MeuappConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'MeuApp'

# Diz ao Django como configurar o app MeuApp

# Define o tipo padrão de ID nos modelos

# É necessário para o app funcionar corretamente dentro do projeto