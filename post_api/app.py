from flask import Flask, render_template, request, redirect

app = Flask(__name__)

context = {}
produtos = {}
produtos[1] = {
    "nome" : "Abacaxi",
    "Preco" : 15
}
produtos[2] = {
    "nome" : "Manga",
    "Preco" : 8
}

@app.route('/produto')
def produto():    
    context["produtos"] = produtos
    return render_template("Produtos.html", **context)

@app.route('/form_produto')
def form_produto():
    return render_template("addProdutos.html")

@app.route('/add_produto', methods=['POST'])
def add_produto():
    nome = request.form['nome']
    preco = request.form['preco']

    produtos[len(produtos) + 1] = {
        "nome" : nome,
        "Preco" : preco
    }

    return redirect("/produto")

if __name__ == "__main__":
    app.run(debug=True)