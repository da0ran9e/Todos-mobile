import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class InitialBackground extends StatefulWidget {
  const InitialBackground({super.key});

  @override
  State<InitialBackground> createState() => _InitialBackgroundState();
}

class _InitialBackgroundState extends State<InitialBackground> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'assets/login_initial/pathfinder.riv',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
