import 'package:zagruzka_ekrana/domain/entities/todo_entity.dart';

abstract interface class TodoRepository{
  Future<List<TodoEntity>> getTodo();
}