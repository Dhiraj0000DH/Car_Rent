import 'package:car_renthol/features/auth/domain/entity/auth_entity.dart';
import 'package:hive/hive.dart';

part 'auth_hive_model.g.dart';

@HiveType(typeId: 1)
class AuthHiveModel extends HiveObject {
  @HiveField(0)
  final String userId;

  @HiveField(1)
  final String fName;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String password;

  AuthHiveModel({
    required this.userId,
    required this.fName,
    required this.email,
    required this.password,
  });

  factory AuthHiveModel.fromEntity(AuthEntity entity) {
    return AuthHiveModel(
      userId: entity.userId,
      fName: entity.fName,
      email: entity.email,
      password: entity.password,
    );
  }

  AuthEntity toEntity() {
    return AuthEntity(
      userId: userId,
      fName: fName,
      email: email,
      password: password,
    );
  }
}
