import 'package:zagruzka_ekrana/domain/entities/todo_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/todo_repository.dart';

class GetTodoUsecase{
  final TodoRepository todoRepository;

  GetTodoUsecase(this.todoRepository);

  Future<List<TodoEntity>> call() {
    return todoRepository.getTodo();
  }

}