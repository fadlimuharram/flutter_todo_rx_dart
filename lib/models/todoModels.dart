// To parse this JSON data, do
//
//     final todo = todoFromJson(jsonString);

import 'dart:convert';

List<Todo> todoFromJson(String str) =>
    new List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

String todoToJson(List<Todo> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) => new Todo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
