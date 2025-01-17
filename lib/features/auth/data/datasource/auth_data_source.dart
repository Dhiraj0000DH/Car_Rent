// import 'package:car_rent/features/auth/domain/entity/auth_entity.dart';
import 'package:car_renthol/features/auth/domain/entity/auth_entity.dart';

abstract interface class IAuthDataSource {
  Future<String> loginUser(String email, String password);

  Future<void> registerUser(AuthEntity user);

  Future<AuthEntity> getCurrentUser();
}
