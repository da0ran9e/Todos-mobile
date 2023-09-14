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
    return Material();
  }

  void _trigger() {
    setState(() {
      _visible = !_visible;
    });
  }
}
