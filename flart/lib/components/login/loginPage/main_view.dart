import 'package:flutter/material.dart';
import 'package:flart/components/login/loginPage/screens/login_screen.dart';
import 'package:flart/components/login/loginPage/screens/sing_up_screen.dart';
import 'package:flart/components/login/loginPage/screens/verify_screen.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({super.key});

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        controller: controller,
        itemBuilder: (context, index) {
          if (index == 0) {
            return LoginScreen(
              controller: controller,
            );
          } else if (index == 1) {
            return SingUpScreen(
              controller: controller,
            );
          } else {
            return VerifyScreen(
              controller: controller,
            );
          }
        },
      ),
    );
  }
}
