import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frout_ecomerce_app/core/helper_classes/get_it.dart';
import 'package:frout_ecomerce_app/features/auth/domin/repos/auth_repo.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/manger/cubits/login_cubit/Login_cubit.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/login_view/widgets/login_view_body_bloc_consumer.dart';

import '../../../../../core/Functions/custom_appBar.dart';
import '../../../../../core/helper_classes/styles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = "loginPage";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context,
            text: "تسجيل الدخول",
            style: AppStyle.textStyleBold19,
            theIcon: Icon(Icons.arrow_back_ios_new)),
        body: loginViewBodyBlocConsumer(),
      ),
    );
  }
}
