import 'dart:io';

void main() {
  int andar = 1;
  const int andarFin = 10;
  const int andarIn = 1;

  while (true) {
    print("\n=== Simulador de Elevador ===");
    print("Andar atual:"" Você está no andar $andar");
    print("1 - Subir");
    print("2 - Descer");
    print("3 - Andar atual");
    print("4 - Sair");
    stdout.write("Escolha uma opção: ");
    
    String? escolha = stdin.readLineSync();

    if (escolha == '1') {
      stdout.write("Digite o andar desejado para subir (2-10): ");
      int? andarDestino = int.tryParse(stdin.readLineSync() ?? '');

      if (andarDestino == null || andarDestino < andar || andarDestino > andarFin) {
        print("Andar inválido! Escolha entre ${andar + 1} e $andarFin.");
        continue;
      }

      print("Subindo...");
      for (int i = andar + 1; i <= andarDestino; i++) {
        print("Andar: $i");
      }
      andar = andarDestino;
      print("Elevador chegou ao andar $andar.");
    }

    else if (escolha == '2') {
      stdout.write("Digite o andar desejado para descer (1-9): ");
      int? andarDestino = int.tryParse(stdin.readLineSync() ?? '');

      if (andarDestino == null || andarDestino > andar || andarDestino < andarIn) {
        print("Andar inválido! Escolha entre ${andar - 1} e $andarFin.");
        continue;
      }

      print("Descendo...");
      for (int i = andar - 1; i >= andarDestino; i--) {
        print("Andar: $i");
      }
      andar = andarDestino;
      print("Elevador chegou ao andar $andar.");
    }

    else if (escolha == '3') {
      print("Você está no andar $andar.");
    }

    if (escolha == '4') {
      print("Encerrado");
      break;
    }

    else {
      print("Opção inválida! Tente novamente.");
    }
  }
}