class AppException implements Exception {
  AppException(this.message, {this.cause});

  factory AppException.fromError(Exception error) {
    if (error is AppException) {
      return error;
    } else {
      return AppException('Unexpected error occurred', cause: error);
    }
  }

  final String message;
  final Object? cause;

  @override
  String toString() => 'AppException: $message';
}
