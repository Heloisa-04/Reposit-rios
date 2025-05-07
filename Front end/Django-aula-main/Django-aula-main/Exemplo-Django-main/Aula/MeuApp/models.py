from django.db import models

# Cria as models (tabelas) no banco de dados
class Homepage(models.Model):
    Titulo = models.CharField(max_length=25)
    Descricao = models.TextField(max_length=500)
    Imagem = models.ImageField(upload_to='Homepage/')

    def __str__(self):
        return self.Titulo