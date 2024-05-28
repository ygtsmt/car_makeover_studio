class SimpleResult<T> {
  final bool isSuccess;
  final int errorType;
  final String? errorMessage;
  final T? data;

  SimpleResult(
      {required this.isSuccess,
      this.errorType = 0,
      this.errorMessage,
      this.data});
}

abstract class GenericResponse<T> {
  T fromJson(Map<String, dynamic> json);
}
