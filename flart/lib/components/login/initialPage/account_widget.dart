import 'dart:io' as io;

import 'package:flutter/material.dart';

class AccountWidget extends FloatingActionButton {
  final Size size;
  final String name;
  final Color? color;

  AccountWidget({
    Key? key,
    this.name = 'name',
    this.size = const Size(150, 150),
    this.color = Colors.white,
    required VoidCallback onPressed,
    Color backgroundColor = const Color.fromARGB(0, 0, 0, 0),
  }) : super(key: key, onPressed: onPressed, backgroundColor: backgroundColor);

  @override
  Widget build(BuildContext context) {
    AssetImage learn = const AssetImage('assets/login/education.png');
    AssetImage gym = const AssetImage('assets/login/gym.png');
    AssetImage work = const AssetImage('assets/login/worker.png');
    AssetImage art = const AssetImage('assets/login/art.png');
    AssetImage add = const AssetImage('assets/login/list.png');

    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(0, 1, 1, 1)),
      width: (150 / 150) * size.width,
      height: (150 / 150) * size.height,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: (150 / 150) * size.width,
              height: (150 / 150) * size.height,
              decoration: ShapeDecoration(
                color: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Positioned(
            left: (35 / 150) * size.width,
            top: (20 / 150) * size.height,
            child: Container(
              width: (79 / 150) * size.width,
              height: (79 / 150) * size.height,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(0, 1, 1, 1)),
              child: Image(
                  image: color == Colors.red
                      ? gym
                      : color == Colors.yellow
                          ? work
                          : color == Colors.green
                              ? learn
                              : color == Colors.blue
                                  ? art
                                  : add),
            ),
          ),
          Positioned(
            left: (58 / 150) * size.width,
            top: (117 / 150) * size.height,
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
