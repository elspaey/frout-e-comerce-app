import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frout_ecomerce_app/core/Functions/custom_appBar.dart';
import 'package:frout_ecomerce_app/core/helper_classes/get_it.dart';
import 'package:frout_ecomerce_app/core/helper_classes/styles.dart';
import 'package:frout_ecomerce_app/features/auth/domin/repos/auth_repo.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/manger/cubits/signUp_cubit/sign_up_cubit.dart';

import 'sign_up_widgets/signUp_viewBody_blockConsumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routName = "signUp";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(context,
            text: "حساب جديد", style: AppStyle.textStyleBold19),
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
