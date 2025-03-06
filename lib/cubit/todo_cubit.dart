


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/model/todo_model.dart';
class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

   // Emit a new list instead of modifying the existing state
    emit([...state,todo]);
  }
}
