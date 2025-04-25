import 'dart:io';
// To-do, não foi possivel renomear

void main() {

  List<String> nome = [];
  List<String> desc = [];
  List<String> urgencia = [];


 
  while(true){
   

    print('Seja bem-vindo ao HElO_NOTES:');
    print("");
    print("O QUE DESEJA FAZER?");
    print("");
    print("1- Incluir tarefa: Digite 01");
    print("2- Listar tarefas: Digite 02");
    print("3- Excluir: Digite 03");
    print("4- Sair: Digite 04");

    print("Qual a sua escolha?");
  
    //Input para a entrada de dados
    String? input = stdin.readLineSync()!;
    

    if (input == '1'){

    print("Digite o nome da tarefa:");
    String? nomeTarefa = stdin.readLineSync();
    nome.add(nomeTarefa ?? 'Tarefa sem nome'); // Adiciona na lista nome da lista.add

    print("Digite a descrição da tarefa:");
    String? descTarefa = stdin.readLineSync();
    desc.add(descTarefa ?? 'Descrição não fornecida');

    print("Qual a urgência da tarefa? (Alta, Média, Baixa)");
    String? urgenciaTarefa = stdin.readLineSync();
    urgencia.add(urgenciaTarefa ?? 'Urgência não definida');

      print('TAREFA INCLUINDA');
      print("");
    }

   else if (input == '2') {
    print('LISTA DE TAREFAS');
  
    if (nome.isEmpty) { //Verifica se a lista está vazia
      print('Nenhuma tarefa cadastrada.');
    } else {
      for (int lajinha = 0; lajinha < nome.length; lajinha++) {
      print('Tarefa ${lajinha + 1}:');
      print('  Nome: ${nome[lajinha]}');
      print('  Descrição: ${desc[lajinha]}');
      print('  Urgência: ${urgencia[lajinha]}');
      print(''); 
        }
    }

    print("Pressione qualquer tecla para voltar ao menu...");
    stdin.readLineSync(); 
   }


    else if (input == '3') {
    print('Digite o número da tarefa que quer excluir:'); 
    String? tarefaInput = stdin.readLineSync();

    
    int tarefa = int.tryParse(tarefaInput ?? '') ?? -1;  // tryParse pode converter um tipo para outro
                                                        // Por exemplo string para int

    if (tarefa > 0 && tarefa <= nome.length) {   // Lenght é a mesma coisa que um len e && equivale a um and

      nome.removeAt(tarefa - 1);         //RemoveAt serve para remover o item de uma lista especificado :D
      desc.removeAt(tarefa - 1);
      urgencia.removeAt(tarefa - 1);

    print('Tarefa excluída com sucesso!');
    } else {
      print('Número de tarefa inválido! Tente novamente.');
    }
  }


    else if(input =='4'){
      print("Saindo...");
      break;
    }
  }
  
  }



 