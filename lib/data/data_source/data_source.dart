import 'dart:convert';
import 'package:zagruzka_ekrana/core/network/http_client.dart';
import 'package:zagruzka_ekrana/data/dto_entities/album_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/comment_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/photo_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/post_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/todo_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/user_entity_dto.dart';

class DataSource {
  final HttpClient _httpClient = HttpClient();

  Future<List<UserEntityDto>> getUser() async {
    final response = await _httpClient.get(endpoint: 'users');
    if (response.statusCode == 200) {
      // Используем функцию jsonDecode для декодирования тела ответа в формат JSON
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      // Отображаем JSON-данные на список объектов типа UserDto
      final List<UserEntityDto> users = jsonData
          .map<UserEntityDto>((json) => UserEntityDto.fromJson(json))
          .toList();

      return users;
    } else {
      throw Exception('Не удалось получить данные');
    }
  }

  Future<List<PostEntityDto>> getPost() async {
    final response = await _httpClient.get(endpoint: 'posts');
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      final List<PostEntityDto> posts =
          jsonData.map((e) => PostEntityDto.fromJson(e)).toList();
      return posts;
    } else {
      throw Exception('Не удалось получить данные');
    }
  }

  Future<List<CommentEntityDto>> getComment() async {
    final response = await _httpClient.get(endpoint: 'comments');
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      final List<CommentEntityDto> comments = jsonData
          .map((e) => CommentEntityDto.fromJson(e))
          .toList(growable: false);
      return comments;
    } else {
      throw Exception('Не удалось получить данные');
    }
  }

  Future<List<AlbumEntityDto>> getAlbum() async {
    final response = await _httpClient.get(endpoint: 'albums');
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body) as List<dynamic>;

      final albomList =
          jsonResponse.map((e) => AlbumEntityDto.fromJson(e)).toList();
      return albomList;
    } else {
      throw Exception('Не удалось получить данные');
    }
  }

  Future<List<PhotoEntityDto>> getPhoto() async {
    final response = await _httpClient.get(endpoint: 'photos');
    if(response.statusCode == 200){
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final photoList = jsonData.map((e) => PhotoEntityDto.fromJson(e)).toList();
      return photoList;
    }else {
      throw Exception('Не удалось получить данные');
    }
  }

  Future<List<TodoEntityDto>> getTodo() async {
      final response = await _httpClient.get(endpoint: 'todos');
      if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      final todoList = jsonData.map((e) => TodoEntityDto.fromJson(e)).toList();
      return todoList;
    }else {
        throw Exception('Не удалось получить данные');
      }
  }

  //как проверить работает ли
void main() async{
  DataSource userDataSource = DataSource();
 final res = await userDataSource.getUser();
 print(res);
}



  //http
  // void main(List<String> arguments) async {
  //   // This example uses the Google Books API to search for books about http.
  //   // https://developers.google.com/books/docs/overview
  //   var url =
  //   Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  //
  //   // Await the http get response, then decode the json-formatted response.
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var jsonResponse =
  //     convert.jsonDecode(response.body) as Map<String, dynamic>;
  //     var itemCount = jsonResponse['totalItems'];
  //     print('Number of books about http: $itemCount.');
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // }

  Future<void> sendData(String endpoint, Map<String, dynamic> data) async {
    final response = await _httpClient.post(endpoint, data);
    if (response.statusCode != 200) {
      throw Exception('Не удалось отправить данные');
    }
  }
}


