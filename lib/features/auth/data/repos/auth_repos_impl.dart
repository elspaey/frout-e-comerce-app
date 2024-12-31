import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:frout_ecomerce_app/core/errors/exceptions.dart';
import 'package:frout_ecomerce_app/core/errors/failure.dart';
import 'package:frout_ecomerce_app/core/services/firebase_auth_service.dart';
import 'package:frout_ecomerce_app/features/auth/data/models/user_model.dart';
import 'package:frout_ecomerce_app/features/auth/domin/entity/user_entity.dart';
import 'package:frout_ecomerce_app/features/auth/domin/repos/auth_repo.dart';

class AuthRepoimpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoimpl({required this.firebaseAuthService});

  // *************************************************************************
//auth repo to create user Email and password
  @override
  Future<Either<Failure, UserEntity>> createUserEmailAndPassword(
      String email, String password, String name) async {
    try {
      var userCreate = await firebaseAuthService.createUserEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(userCreate));
    } on CustomException catch (e) {
      return left(ServerFailure(e.exceptionMessage));
    } catch (e) {
      log("Exception form authRepoImpl.create user Email and password: ${e.toString()}");
      return left(ServerFailure("there was an error try later"));
    }
  }

  // *************************************************************************
//auth repo to login user Email and password

  @override
  Future<Either<Failure, UserEntity>> logInWithEmailAndPassword(
      String email, String password) async {
    try {
      var userSignUp = await firebaseAuthService.logInWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(userSignUp));
    } on CustomException catch (e) {
      return left(ServerFailure(e.exceptionMessage));
    } catch (e) {
      log("Exception form authRepoImpl.Login user Email and password: ${e.toString()}");
      return left(ServerFailure("حدث خطأ ما الرجاء المحاوله مره اخرى "));
    }
  }
  // *************************************************************************
//auth repo to login with google

  @override
  Future<Either<Failure, UserEntity>> loginWithGoogle() async {
    try {
      var user = await firebaseAuthService.logInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log("Exception in authRepoImpl in create user with google: ${e.toString()}");
    }
    return left(ServerFailure("حدث خطأ ما الرجاء المحاوله لاحقا"));
  }


}
