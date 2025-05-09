import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  // Lista de tarefas
  List<String> todoList = ["aaaaa"];

  // Controlador para o campo de texto
  final TextEditingController _controller = TextEditingController();

  // Função para adicionar nova tarefa
  void _addTodo() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        todoList.add(_controller.text);
      });
      _controller.clear();
    }
  }

  // Função para remover tarefa
  void _removeTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Column(
        children: [
          // Campo de texto para adicionar uma nova tarefa
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Nova Tarefa',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Botão para adicionar tarefa
          ElevatedButton(
            onPressed: _addTodo,
            child: const Text('Adicionar'),
          ),
          // Lista de tarefas
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todoList[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _removeTodo(index), // Chama a função para remover a tarefa
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
