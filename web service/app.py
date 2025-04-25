from flask import Flask, render_template, request, redirect

app = Flask(__name__)

context = {}
produtos = {
    1: {"nome": "Abacaxi", "Preco": 15},
    2: {"nome": "Manga", "Preco": 8}
}

@app.route('/')
def homepage():
    context = {}
    context["logo"] =   "img/Sernesto.jpeg"
    context["img"] =   "img/Ernesto.jpg"
    context["Titulo"] = "El venta de Ernesto"
    context["Texto"] = "Bienvenido a la venta de Ernesto, Ernesto está orgulloso de usted, continúe con el buen trabajo, joven caballero. Recuerda nunca desviarte del camino del negocio, roba a tus clientes siempre que puedas."
    return render_template("homepage.html", **context) #Página a ser renderizada. 

@app.route('/produto')
def produto():    
    context = {"produtos": produtos}
    return render_template("produto.html", **context)

@app.route('/add_produto', methods=['POST'])
def add_produto():
    nome = request.form['nome']
    preco = request.form['preco']

    produtos[len(produtos) + 1] = {
        "nome" : nome,
        "Preco" : preco
    }
    return redirect("/produto")

@app.route('/form_produto')
def form_produto():
    return render_template("add_produto.html")

@app.route('/del_produto')
def del_produto():
    context = {"logo": "img/Sernesto.jpeg"}
    return render_template("del_produto.html", **context)

@app.route('/up_produto')
def up_produto():
    context = {"logo": "img/Sernesto.jpeg"}
    return render_template("up_produto.html", **context)

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')