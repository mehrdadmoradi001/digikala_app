import 'package:dartz/dartz.dart';
import 'package:digikala_app/data/datasource/authentication_datasource.dart';
import 'package:digikala_app/di/di.dart';
import 'package:digikala_app/util/api_exception.dart';

abstract class IAuthRepository {
  Future<Either<String, String>> register(
    String username,
    String password,
    String passwordConfirm,
  );
}

class AuthenticationRepository extends IAuthRepository {
  final IAuthenticationDatasource _dataSource = locator.get();

  @override
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm) async {
    try {
      await _dataSource.register('mehrdadmoradi012349', '12345678', '12345678');
      return Right('ثبت نام انجام شد');
    } on ApiException catch (ex) {
      return Left(ex.message ?? 'خطا محتوای متنی ندارد ');
    }
  }
}
