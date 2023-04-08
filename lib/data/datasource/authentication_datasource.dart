import 'package:digikala_app/di/di.dart';
import 'package:digikala_app/util/api_exception.dart';
import 'package:dio/dio.dart';

class AuthenticationRemote {
  final Dio _dio = locator.get();

  Future<void> register(
    String username,
    String password,
    String passwordConfirm,
  ) async {
    try {
      final response = await _dio.post(
        'collections/users/records',
        data: {
          'username': username,
          'password': password,
          'passwordConfirm': passwordConfirm,
        },
      );
    } on DioError catch (ex) {
      //throw ApiException(ex.response?.statusCode,ex.response?.data['message']);
      print(ex.response?.statusCode);
      print(ex.response?.data[

      ]);
    } catch (ex) {}
  }
}
