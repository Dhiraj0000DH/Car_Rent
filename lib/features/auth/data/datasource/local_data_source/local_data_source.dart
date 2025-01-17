
import 'package:car_renthol/core/network/hive_service.dart';
import 'package:car_renthol/features/auth/data/model/auth_hive_model.dart';
import 'package:car_renthol/features/auth/domain/entity/auth_entity.dart';

abstract class AuthLocalDataSource {
  Future<AuthEntity?> getCurrentUser();
  Future<String> loginUser(String email, String password);
  Future<void> registerUser(AuthEntity user);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final HiveService _hiveService;

  AuthLocalDataSourceImpl(this._hiveService);

  @override
  Future<AuthEntity?> getCurrentUser() async {
    try {
      final authHiveModel = await _hiveService.getCurrentUser();
      if (authHiveModel != null) {
        return authHiveModel.toEntity();
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String> loginUser(String email, String password) async {
    try {
      await _hiveService.login(email, password);
      return "Login successful";
    } catch (e) {
      return Future.error("Invalid credentials");
    }
  }

  @override
  Future<void> registerUser(AuthEntity user) async {
    try {
      final authHiveModel = AuthHiveModel.fromEntity(user);
      await _hiveService.register(authHiveModel);
    } catch (e) {
      return Future.error("Registration failed");
    }
  }
}
