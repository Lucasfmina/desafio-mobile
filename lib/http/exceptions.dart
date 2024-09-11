class ServerErrorException implements Exception {
  final String message;

  ServerErrorException(this.message);
}

class MessageNotFoundException implements Exception {
  final String message;

  MessageNotFoundException(this.message);
}
