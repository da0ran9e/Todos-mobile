import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
    return MaterialApp(
      home: Builder(
          builder: (context) => LiquidSwipe(initialPage: 1, pages: pages)),
    );
  }

  final pages = [
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red[50],
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
