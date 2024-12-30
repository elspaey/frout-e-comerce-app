import 'package:frout_ecomerce_app/core/services/firebase_auth_service.dart';
import 'package:frout_ecomerce_app/features/auth/data/repos/auth_repos_impl.dart';
import 'package:frout_ecomerce_app/features/auth/domin/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoimpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
    ),
  );
}
