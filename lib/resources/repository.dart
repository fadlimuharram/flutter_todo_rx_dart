import 'package:flutter_todo_rx_dart/models/todoModels.dart';
import 'package:flutter_todo_rx_dart/resources/todoApiProvider.dart';

class Repository {
  final todoApiProvider = TodoApiProvider();
  Future<List<Todo>> fetchAllTodo() => todoApiProvider.fetchTodoList();
}
