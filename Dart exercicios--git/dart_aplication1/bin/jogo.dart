import 'dart:io';

void mostrarTabuleiro(List<List<String>> tabuleiro) {
  for (var l = 0; l < 3; l++) {
    print(tabuleiro[l].join(' | '));
    if (l < 2) {
      print('---------');
    }
  }
}

bool verificarVitoria(List<List<String>> tabuleiro, String jogador) {
  for (var l = 0; l < 3; l++) {
    if (tabuleiro[l][0] == jogador && tabuleiro[l][1] == jogador && tabuleiro[l][2] == jogador) {
      return true;
    } else if (tabuleiro[0][l] == jogador && tabuleiro[1][l] == jogador && tabuleiro[2][l] == jogador) {
      return true;
    }
  }

  if (tabuleiro[0][0] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][2] == jogador) {
    return true;
  } else if (tabuleiro[0][2] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][0] == jogador) {
    return true;
  }

  return false;
}

bool empate(List<List<String>> tabuleiro) {
  for (var l = 0; l < 3; l++) {
    for (var c = 0; c < 3; c++) {
      if (tabuleiro[l][c] == ' ') {
        return false;
      }
    }
  }
  return true;
}

void play() {
  List<List<String>> tabuleiro = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ];

  String jogadorAtual = 'X';
  bool jogoEmAndamento = true;

  while (jogoEmAndamento) {
    mostrarTabuleiro(tabuleiro);

    print('Jogador $jogadorAtual, escolha linha e coluna (1-3):');
    String? input = stdin.readLineSync();
    if (input == null) {
      continue;
    }

    List<String> coordenadas = input.split(' ');
    if (coordenadas.length != 2) {
      print('Entrada inválida. Por favor, insira dois números (linha e coluna). \n');
      continue;
    }

    int linha = int.tryParse(coordenadas[0]) ?? -1;
    int coluna = int.tryParse(coordenadas[1]) ?? -1;

    linha -= 1;
    coluna -= 1;

    if (linha < 0 || linha > 2 || coluna < 0 || coluna > 2 || tabuleiro[linha][coluna] != ' ') {
      print('Jogada inválida! A posição já está ocupada ou fora do intervalo permitido. \n');
      continue;
    }

    tabuleiro[linha][coluna] = jogadorAtual;

    if (verificarVitoria(tabuleiro, jogadorAtual)) {
      mostrarTabuleiro(tabuleiro);
      print('Jogador $jogadorAtual venceu!');
      print(" ");
      jogoEmAndamento = false;
    } 
    else if (empate(tabuleiro)) {
      mostrarTabuleiro(tabuleiro);
      print('Empate!');
      jogoEmAndamento = false;
    } 
    else {
      jogadorAtual = (jogadorAtual == 'X') ? 'O' : 'X';
    }
  }
}

void main() {
  play();
}