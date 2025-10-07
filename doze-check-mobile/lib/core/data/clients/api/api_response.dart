part of 'api_client.dart';

class APIResponse {
  final int statusCode;
  final dynamic data;
  final String? message;

  APIResponse({required this.statusCode, this.data, this.message});

  factory APIResponse.fromResponse(Response<dynamic> response) {
    return APIResponse(
      statusCode: response.statusCode ?? 0,
      data: response.data,
      // message: response.data['error'],
    );
  }

  factory APIResponse.unauthorized() {
    return APIResponse(
      statusCode: HttpStatus.unauthorized,
      data: null,
      message: 'unauthorized',
    );
  }

  factory APIResponse.error({
    int? statusCode,
    String message = 'Something went wrong',
  }) {
    return APIResponse(
      statusCode: statusCode ?? HttpStatus.internalServerError,
      data: null,
      message: message,
    );
  }

  Map<String, dynamic> toJson() {
    return {'code': statusCode, 'data': data, 'error': message};
  }

  APIResponse guard() {
    if (statusCode >= HttpStatus.badRequest) {
      throw Exception(message);
    }
    return this;
  }
}
