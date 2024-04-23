
import 'package:zagruzka_ekrana/src/domain/entities/todo_entity.dart';

abstract interface class TodoRepository{
  Future<List<TodoEntity>> getTodo();
}