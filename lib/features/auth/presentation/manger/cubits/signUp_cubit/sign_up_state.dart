part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final UserEntity userEntity;

  SignUpSuccess({required this.userEntity});
}

class SignUpFailure extends SignUpState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}
