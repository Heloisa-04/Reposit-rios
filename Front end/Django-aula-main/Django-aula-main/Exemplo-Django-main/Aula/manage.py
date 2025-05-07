# usar o interpretador Python para executar o arquivo
#!/usr/bin/env python

#
"""Django's command-line utility for administrative tasks."""

import os
import sys # argumentos de linha de comando (sys).

#Função principal do código 
def main():
    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Aula.settings')
    #Diz ao Django qual arquivo de configurações usar.
    try:
        from django.core.management import execute_from_command_line
        # Essa função processa os comandos digitados no terminal.
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc 
        # Mensagem de erro caso a instalação não esteja correta
    execute_from_command_line(sys.argv)
        #interpreta os comandos passados via terminal


if __name__ == '__main__':
    main()

# python manage.py runserver – para iniciar o servidor de desenvolvimento.

# python manage.py makemigrations – para criar arquivos de migração.

# python manage.py migrate – para aplicar migrações no banco de dados.

# python manage.py createsuperuser – para criar um usuário administrador.