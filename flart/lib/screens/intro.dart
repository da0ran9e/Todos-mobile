import 'package:flutter/material.dart';
import 'package:flart/progassets/intro_logo.dart';
import 'package:flart/progassets/intro_text.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
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
        darkTheme: ThemeData.dark(),
        home: Container(
          width: 375,
          height: 512,
          padding: const EdgeInsets.symmetric(horizontal: 102),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color.fromARGB(210, 0, 0, 0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntroLogo(size: const Size(100, 100)),
              IntroText(size: const Size(200, 110))
            ],
          ),
        ));
  }
}
