abstract class AppError implements Exception {
  final String? errorCode;
  final String message;

  const AppError({this.errorCode, required this.message});
}

class ServerError extends AppError {
  ServerError({super.errorCode, required super.message});
}

class NetworkError extends AppError {
  NetworkError({super.errorCode, required super.message});
}

class UnauthorizedError extends AppError {
  UnauthorizedError({super.errorCode, required super.message});
}

class IncorrectDataError extends AppError {
  IncorrectDataError({super.errorCode, required super.message});
}

class UndefinedError extends AppError {
  UndefinedError({super.errorCode, required super.message});
}
