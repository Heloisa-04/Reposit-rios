import 'dart:io';
import 'dart:convert';


List<Map<String, dynamic>> carregarEstoque() {
  try {
    final file = File('estoque.json');
    if (!file.existsSync()) return [];

    String jsonData = file.readAsStringSync();
    return List<Map<String, dynamic>>.from(json.decode(jsonData));
  } catch (e) {
    return [];
  }
}

void salvarEstoque(List<Map<String, dynamic>> estoque) {
  final file = File('estoque.json');
  file.writeAsStringSync(json.encode(estoque));
}

void main() {
  List<Map<String, dynamic>> estoque = carregarEstoque();

  while (true) {
    print("\n Sistema de Estoque ");
    print("1.Cadastrar Produto");
    print("2.Listar Produtos");
    print("3.Excluir Produtos Cadastrados");
    print("4.Sair");
    stdout.write("Escolha uma opção:");

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        adicionarProduto(estoque);
        salvarEstoque(estoque);
        break;
      case '2':
        listarEstoque(estoque);
        break;
      case '3':
        removerProduto(estoque);
        salvarEstoque(estoque);
        break;
      case '4':
        print("Saindo do sistema...");
        return;
      default:
        print("Opção inválida!");
    }
  }
}

void adicionarProduto(List<Map<String, dynamic>> estoque) {
  stdout.write("\nNome do produto: ");
  String? nome = stdin.readLineSync();

  stdout.write("Quantidade: ");
  int? quantidade = int.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Preço: ");
  double? preco = double.tryParse(stdin.readLineSync() ?? "");

  if (nome == null || nome.isEmpty || quantidade == null || preco == null) {
    print(" Entrada inválida! Produto não cadastrado.");
    return;
  }

  estoque.add({"nome": nome, "quantidade": quantidade, "preco": preco});
  print(" Produto adicionado com sucesso!");
}

void listarEstoque(List<Map<String, dynamic>> estoque) {
  if (estoque.isEmpty) {
    print("\n Estoque vazio!");
    return;
  }

  print("\n Estoque Atual:");
  for (int i = 0; i < estoque.length; i++) {
    print("${i + 1}. ${estoque[i]['nome']} - Quantidade: ${estoque[i]['quantidade']} - Preço: R\$${estoque[i]['preco']}");
  }
}

void removerProduto(List<Map<String, dynamic>> estoque) {
  listarEstoque(estoque);

  if (estoque.isEmpty) return;

  stdout.write("\nNúmero do produto para remover: ");
  String? entrada = stdin.readLineSync();
  int? index = int.tryParse(entrada ?? "");

  if (index == null || index < 1 || index > estoque.length) {
    print(" Produto inválido!");
    return;
  }

  estoque.removeAt(index - 1);
  print(" Produto removido com sucesso!");
}
