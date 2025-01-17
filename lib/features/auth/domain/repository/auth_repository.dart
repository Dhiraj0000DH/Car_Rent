
import 'package:car_renthol/core/error/failure.dart';
import 'package:car_renthol/features/auth/domain/entity/auth_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthEntity?>> getCurrentUser();
  Future<Either<Failure, String>> loginUser(String email, String password);
  Future<Either<Failure, void>> registerUser(AuthEntity user);
}
