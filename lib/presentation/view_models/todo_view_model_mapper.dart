import 'package:zagruzka_ekrana/domain/entities/todo_entity.dart';
import 'package:zagruzka_ekrana/presentation/view_models/todo_view_model.dart';

class TodoViewModelMapper {
  static TodoViewModel toViewModel(TodoEntity todo) {
    return TodoViewModel(
        userId: todo.userId,
        id: todo.id,
        title: todo.title,
        completed: todo.completed);
  }
}

