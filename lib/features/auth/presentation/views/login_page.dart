import 'package:flutter/material.dart';
import 'package:frout_ecomerce_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const routeName = "loginPage";
  @override
  Widget build(BuildContext context) {
    return loginViewBody();
  }
}
