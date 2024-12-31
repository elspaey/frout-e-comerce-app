import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frout_ecomerce_app/core/Functions/biuld_scafold_massenger.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/signup_page_body.dart';
import 'package:frout_ecomerce_app/features/mainView/presentation/mainView.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../manger/cubits/signUp_cubit/sign_up_cubit.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.pushNamed(context, Mainview.routName);
        }
        if (state is SignUpFailure) {
          buildScafoldMessanger(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignUpLoading ? true : false,
            child: SignupViewBody());
      },
    );
  }
}
