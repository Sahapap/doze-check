import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doze_check/shared/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';
part 'api_response.dart';

@riverpod
BaseAPIClient apiClient(Ref ref) {
  return APIClient();
}

sealed class BaseAPIClient {
  final Dio _dio = Dio();

  APIResponse _handleError(dynamic error) {
    if (error is DioException) {
      // Extract error message from response or use a default
      final errorMessage = error.response?.data is Map
          ? error.response?.data['error'] ?? error.message ?? 'Unknown error'
          : error.message ?? 'Unknown error';

      // Return an error APIResponse instead of throwing
      throw APIResponse.error(
        statusCode: error.response?.statusCode,
        message: errorMessage,
      );
    } else {
      // Handle non-Dio exceptions
      throw APIResponse.error(message: error.toString());
    }
  }

  Future<APIResponse> get(String url) async {
    try {
      final response = await _dio.get(url);
      return APIResponse.fromResponse(response).guard();
    } catch (error) {
      return _handleError(error);
    }
  }

  Future<APIResponse> post(String url, {Object? body}) async {
    try {
      final response = await _dio.post(url, data: body);
      return APIResponse.fromResponse(response).guard();
    } catch (error) {
      return _handleError(error);
    }
  }

  Future<APIResponse> put(String url, {Object? body}) async {
    try {
      final response = await _dio.put(url, data: body);
      return APIResponse.fromResponse(response).guard();
    } catch (error) {
      return _handleError(error);
    }
  }

  Future<APIResponse> delete(String url, {Object? body}) async {
    try {
      final response = await _dio.delete(url, data: body);
      return APIResponse.fromResponse(response).guard();
    } catch (error) {
      return _handleError(error);
    }
  }

  Future<APIResponse> patch(String url, {Object? body}) async {
    try {
      final response = await _dio.patch(url, data: body);
      return APIResponse.fromResponse(response).guard();
    } catch (error) {
      return _handleError(error);
    }
  }
}

final class APIClient extends BaseAPIClient {
  static final APIClient _instance = APIClient._internal();

  APIClient._internal() {
    _dio.options.baseUrl = Config.apiBaseUrl;
  }

  factory APIClient() => _instance;
}

// final class APIClientWithAuth extends BaseAPIClient {
//   final IdentityRepository identityRepository;

//   APIClientWithAuth({required this.identityRepository}) {
//     _dio.options.baseUrl = Config.apiBaseUrl;
//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           try {
//             final token = await identityRepository.getToken();

//             if (token.accessToken == '') {
//               throw 'No token found';
//             }

//             options.headers['Authorization'] = token.authorization;
//             return handler.next(options);
//           } catch (e) {
//             return handler.reject(
//               DioException(
//                 requestOptions: options,
//                 response: Response(
//                   requestOptions: options,
//                   data: APIResponse.unauthorized(),
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
