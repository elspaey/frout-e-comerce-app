part of 'Login_cubit.dart';

@immutable
abstract class LogInCubitState {}

class LoginCubitInitial extends LogInCubitState {}

class LoginCubitLoading extends LogInCubitState {}

class LoginCubitSuccess extends LogInCubitState {
  final UserEntity userEntity;

  LoginCubitSuccess({required this.userEntity});
}

class LoginCubitFailure extends LogInCubitState {
  final String errMessage;

  LoginCubitFailure({required this.errMessage});
}
