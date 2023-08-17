class DividingZeroException implements Exception {
  final String _message;

  const DividingZeroException(String message) : _message = message;

  String get message => _message;
}
