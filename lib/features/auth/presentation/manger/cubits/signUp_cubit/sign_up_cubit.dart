import 'package:bloc/bloc.dart';
import 'package:frout_ecomerce_app/features/auth/domin/entity/user_entity.dart';
import 'package:frout_ecomerce_app/features/auth/domin/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  Future<void> createUserEmailAndPassword(
      String email, String password, String name) async {
    emit(SignUpLoading());
    final result =
        await authRepo.createUserEmailAndPassword(email, password, name);
    result.fold(
      (Failure) {
        return emit(SignUpFailure(errMessage: Failure.failureMessage));
      },
      (UserEntity) {
        return emit(SignUpSuccess(userEntity: UserEntity));
      },
    );
  }
}
