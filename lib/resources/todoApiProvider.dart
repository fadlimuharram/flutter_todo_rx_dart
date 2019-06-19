import 'package:flutter/foundation.dart';
import 'package:http/http.dart' show Client;
import 'package:flutter_todo_rx_dart/models/todoModels.dart';

class TodoApiProvider {
  Client client = Client();
  final _url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> fetchTodoList() async {
    print('masuk');
    final response = await client.get(_url);

    if (response.statusCode == 200) {
      return compute(todoFromJson, response.body);
    } else {
      throw Exception('Failed to load');
    }
  }
}
