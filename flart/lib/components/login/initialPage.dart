import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flart/components/login/initialPage/account_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AccountWidget(
                  name: 'name',
                  image: AssetImage('assets/icons/image.png'),
                  size: Size(150, 150),
                  color: Colors.yellow),
              AccountWidget(
                  name: 'name',
                  image: AssetImage('assets/icons/image.png'),
                  size: Size(150, 150),
                  color: Colors.red)
            ],
          )
        ],
      ),
    );
  }
}
