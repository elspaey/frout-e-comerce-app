import 'package:bloc/bloc.dart';
import 'package:frout_ecomerce_app/features/auth/domin/entity/user_entity.dart';
import 'package:frout_ecomerce_app/features/auth/domin/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'Logincubit_state.dart';

class loginCubit extends Cubit<LogInCubitState> {
  loginCubit(this.authRepo) : super(LoginCubitInitial());
  final AuthRepo authRepo;
  Future<void> loginUser(String email, String password) async {
    emit(LoginCubitLoading());
    var result = await authRepo.logInWithEmailAndPassword(email, password);
    result.fold(
      (Failure) => emit(LoginCubitFailure(errMessage: Failure.failureMessage)),
      (UserEntity) => emit(LoginCubitSuccess(userEntity: UserEntity)),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginCubitLoading());
    var result = await authRepo.loginWithGoogle();
    result.fold(
      (failure) => emit(LoginCubitFailure(errMessage: failure.failureMessage)),
      (UserEntity) => emit(LoginCubitSuccess(userEntity: UserEntity)),
    );
  }
}
