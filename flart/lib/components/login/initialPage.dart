import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

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
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(148, 98, 172, 218),
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              svgPath: "assets/Login/home.svg",
              backgroundColor: Color.fromARGB(255, 66, 255, 151),
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.bookmark_border,
              backgroundColor: Color.fromARGB(255, 52, 236, 73),
              extras: {"label": "bookmark"}),
          FluidNavBarIcon(
              svgPath: "assets/conference.svg",
              backgroundColor: Color.fromARGB(255, 109, 192, 255),
              extras: {"label": "conference"}),
        ],
        style: FluidNavBarStyle(
            barBackgroundColor: Color.fromARGB(255, 99, 241, 212),
            iconBackgroundColor: Color.fromARGB(255, 99, 241, 212),
            iconSelectedForegroundColor: Color.fromARGB(255, 35, 0, 0),
            iconUnselectedForegroundColor:
                const Color.fromARGB(255, 255, 255, 255)),
        scaleFactor: 2,
        defaultIndex: 1,
        onChange: _handleNavigationChange,
      ),
    ));
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
}
