import 'dart:io';

void main() {
  bool jogarNovamente = true;

  while (jogarNovamente) {
    jogar();
    stdout.write("\nDeseja jogar novamente? (s/n): ");
    String? resposta = stdin.readLineSync()?.toLowerCase();
    if (resposta != 's') {
      jogarNovamente = false;
    }
  }
}

void jogar() {
  List<List<String>> tabuleiro = List.generate(3, (_) => List.generate(3, (_) => ' '));
  String jogadorAtual = 'X';
  bool jogoAtivo = true;
  int jogadas = 0;

  while (jogoAtivo) {
    exibirTabuleiro(tabuleiro);
    print("\nJogador $jogadorAtual, escolha linha e coluna (0-2):");
    int? linha, coluna;

    while (true) {
      try {
        stdout.write("Linha: ");
        linha = int.parse(stdin.readLineSync()!);
        stdout.write("Coluna: ");
        coluna = int.parse(stdin.readLineSync()!);

        if (linha >= 0 && linha < 3 && coluna >= 0 && coluna < 3 && tabuleiro[linha][coluna] == ' ') {
          tabuleiro[linha][coluna] = jogadorAtual;
          jogadas++;
          break;
        } else {
          print("Posição inválida! Escolha outra.");
        }
      } catch (e) {
        print("Entrada inválida! Digite números entre 0 e 2.");
      }
    }

    if (verificarVitoria(tabuleiro, jogadorAtual)) {
      exibirTabuleiro(tabuleiro);
      print("\n🎉 Jogador $jogadorAtual venceu! 🎉");
      jogoAtivo = false;
    } else if (jogadas == 9) {
      exibirTabuleiro(tabuleiro);
      print("\n🤝 O jogo empatou! 🤝");
      jogoAtivo = false;
    } else {
      jogadorAtual = (jogadorAtual == 'X') ? 'O' : 'X';
    }
  }
}

void exibirTabuleiro(List<List<String>> tabuleiro) {
  print("\n   0   1   2 ");
  for (int i = 0; i < 3; i++) {
    print("  -------------");
    stdout.write("$i ");
    for (int j = 0; j < 3; j++) {
      stdout.write("| ${tabuleiro[i][j]} ");
    }
    print("|");
  }
  print("  -------------");
}

bool verificarVitoria(List<List<String>> tabuleiro, String jogador) {
  // Verificar linhas e colunas
  for (int i = 0; i < 3; i++) {
    if ((tabuleiro[i][0] == jogador && tabuleiro[i][1] == jogador && tabuleiro[i][2] == jogador) ||
        (tabuleiro[0][i] == jogador && tabuleiro[1][i] == jogador && tabuleiro[2][i] == jogador)) {
      return true;
    }
  }

  // Verificar diagonais
  if ((tabuleiro[0][0] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][2] == jogador) ||
      (tabuleiro[0][2] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][0] == jogador)) {
    return true;
  }

  return false;
}