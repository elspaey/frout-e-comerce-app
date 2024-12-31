import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frout_ecomerce_app/core/Functions/biuld_scafold_massenger.dart';
import 'package:frout_ecomerce_app/core/Widgets/custom_progress_hud.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/manger/cubits/login_cubit/Login_cubit.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/01%20main_view_widgets/login_view_body.dart';
import 'package:frout_ecomerce_app/features/mainView/presentation/mainView.dart';

class loginViewBodyBlocConsumer extends StatelessWidget {
  const loginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<loginCubit, LogInCubitState>(
      listener: (context, state) {
        if (state is LoginCubitSuccess) {
          Navigator.pushNamed(context, Mainview.routName);
        }
        if (state is LoginCubitFailure) {
          buildScafoldMessanger(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is LoginCubitLoading ? true : false,
            theChild: LoginViewBody());
      },
    );
  }
}
