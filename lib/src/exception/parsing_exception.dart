class ParsingException implements Exception {
  final String _message;

  const ParsingException(String message) : _message = message;

  String get message => _message;
}
