class FinvuException implements Exception {
  final String code;
  final String? message;
  FinvuException(this.code, this.message);

  static FinvuException from(e) {
    return FinvuException(e.code ?? '', e.message);
  }

  @override
  String toString() {
    return 'FinvuException(code: $code, message: $message)';
  }
}
