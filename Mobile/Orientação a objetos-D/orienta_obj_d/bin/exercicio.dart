// classe Tarefas
class Tasks {
  int id;
  String name;
  DateTime data;

  Tasks(this.id, this.name, this.data);
}

enum Priority { alta, media, baixa } //Enumerados, número fixo de valores constantes 

class TasksPriority extends Tasks {
  Priority priority;

  TasksPriority(super.id, super.name, super.data, this.priority);
}

// 
class TaskDTO {
  int id;
  String name;
  Priority pr; 
  DateTime data;

  TaskDTO(this.id, this.name,this.pr,this.data);
}

abstract class TaskRepository{ 
  Tasks add(TaskDTO tdto);
  Tasks? remove(int id);
  Tasks? update(int id, TaskDTO tdto);
  Tasks? findById(int id);
  Tasks? findByName(String name);
  List<Tasks> getAllTasks();
  List<Tasks> getTaskByPriority();
}


class TaskRepositoryFromList implements TaskRepository {

  List<TasksPriority> task = [];

  @override
  Tasks add(TaskDTO tdto) {

    var tarefa = TasksPriority(tdto.id,tdto.name, tdto.data, tdto.pr);
    task.add(tarefa);
    
    return tarefa;

  }

  @override
  Tasks? remove(int id){
    var tarefa = findById(id);
    if (tarefa != null){
      task.remove(tarefa);
      return tarefa;
    }
    return null;
  } 
  }

  @override
  Tasks? findByName(String name) {
    var tarefa = findByName(name);
      try{

      }
  }

  @override
  List<Tasks> getAllTasks() {
    
  }

  @override
  List<Tasks> getTaskByPriority() {
   
  }

  @override
  Tasks? remove(int id) {
    
  }

  @override
  Tasks? update(int id, TaskDTO dto) {
    
  }

}