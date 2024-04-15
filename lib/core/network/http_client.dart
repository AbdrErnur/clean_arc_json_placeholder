import 'package:http/http.dart' as http;

class HttpClient {
  final _baseUrl = 'https://jsonplaceholder.typicode.com';

  HttpClient._();

  static final HttpClient _instance = HttpClient._();

  factory HttpClient() {
    return _instance;
  }

  Future<http.Response> get({required String endpoint}) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return response;
  }

  Future<http.Response> post(String endpoint, Map<String, dynamic> data) async {
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
      body: data,
    );
    return response;
  }

}

//request отправляешь
//response получаешь