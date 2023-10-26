abstract class Failure implements Exception {
  final String message;
  final int code;

  Failure({
    required this.message,
    required this.code,
  });
}

class ServerFailue extends Failure {

  ServerFailue({
    required super.message,
    required super.code,
  });
}
