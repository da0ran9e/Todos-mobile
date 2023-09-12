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
              backgroundColor: Color(0xFF4285F4),
              extras: {"label": "home"}),
          FluidNavBarIcon(
              icon: Icons.bookmark_border,
              backgroundColor: Color(0xFFEC4134),
              extras: {"label": "bookmark"}),
          FluidNavBarIcon(
              svgPath: "assets/conference.svg",
              backgroundColor: Color(0xFF34A950),
              extras: {"label": "conference"}),
        ],
        style: FluidNavBarStyle(iconUnselectedForegroundColor: Colors.white),
        scaleFactor: 1.5,
        defaultIndex: 1,
        // itemBuilder: (icon, item) => Semantics(
        //   label: icon.extras["label"],
        //   child: item,
        // ),
      ),
    ));
  }
}
