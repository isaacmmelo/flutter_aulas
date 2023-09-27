import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //Referencia toDoBox

  List toDoList = [];

  final _toDoBox = Hive.box('toDoBox');

  //Este método irá rodar se for a primeira abrindo este aplicativo no celular
  void createInitialData() {
    toDoList = [
      ["Este é um aplicativo simples de tarefa", false],
      [
        "Você pode clicar no quadrado ao lado para marcar uma tarefa como concluida",
        false
      ],
      ["Você pode arrastar uma tarefa para a direita para excluir", false],
      ["Vamos lá!!", false],
    ];
  }

  //Carregar dados
  void loadData() {
    toDoList = _toDoBox.get("TODOLIST");
  }

  //Atualizar dados
  void updateDataBase() {
    _toDoBox.put("TODOLIST", toDoList);
  }
}
