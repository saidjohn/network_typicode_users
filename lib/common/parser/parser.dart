import 'dart:convert';

import '../model/todos/todo_model.dart';
import '../model/users/user.dart';

abstract class Parser {

  static List<Todo> parseAllTodo(String data) {
    List json = jsonDecode(data);
    return json.map<Todo>((map) => Todo.fromJson(map)).toList();
  }

  static List<User> parseAllUser(String data) {
    List json = jsonDecode(data);
    return json.map((e) => User.fromJson(e)).toList();
  }
}
