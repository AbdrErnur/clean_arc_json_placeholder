import 'package:zagruzka_ekrana/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/data/todo_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/domain/entities/todo_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final DataSource dataSource;

  TodoRepositoryImpl(this.dataSource);

  @override
  Future<List<TodoEntity>> getTodo() async {
    final todo = await dataSource.getTodo();
    final List<TodoEntity> todoList = todo.map((e) => e.toEntity()).toList();
    return todoList;
  }
}