import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flart/components/login/initialPage/account_widget.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key, required this.visible});
  final bool visible;
  @override
  State<InitialPage> createState() => _InitialPageState(visible);
}

class _InitialPageState extends State<InitialPage> {
  bool _visible = true;

  _InitialPageState(bool visible) {
    _visible = visible;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _visible ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: const AccountWidget(
                    name: 'name',
                    image: AssetImage('assets/icons/image.png'),
                    size: Size(150, 150),
                    color: Colors.yellow),
              ),
              AnimatedOpacity(
                opacity: _visible ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: const AccountWidget(
                    name: 'name',
                    image: AssetImage('assets/icons/image.png'),
                    size: Size(150, 150),
                    color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _trigger() {
    setState(() {
      _visible = !_visible;
    });
  }
}
