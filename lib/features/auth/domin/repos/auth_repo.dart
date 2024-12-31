import 'package:dartz/dartz.dart';
import 'package:frout_ecomerce_app/core/errors/failure.dart';
import 'package:frout_ecomerce_app/features/auth/domin/entity/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserEmailAndPassword(
      String email, String password, String name);
  Future<Either<Failure, UserEntity>> logInWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, UserEntity>> loginWithGoogle();
}
