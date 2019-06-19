import 'package:flutter_todo_rx_dart/models/todoModels.dart';
import 'package:flutter_todo_rx_dart/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class TodoBloc {
  final _respository = Repository();
  final _todoFetcher = PublishSubject<List<Todo>>();

  Observable<List<Todo>> get allTodo => _todoFetcher.stream;

  fetchAllTodo() async {
    List<Todo> todo = await _respository.fetchAllTodo();
    _todoFetcher.sink.add(todo);
  }

  dispose() {
    _todoFetcher.close();
  }
}

final bloc = TodoBloc();
