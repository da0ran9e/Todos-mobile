import 'dart:io' as io;

import 'package:flutter/material.dart';

class AccountWidget extends FloatingActionButton {
  final Size size;
  final String name;
  final AssetImage? image;
  final Color? color;

  AccountWidget({
    Key? key,
    this.name = 'name',
    required this.image,
    this.size = const Size(150, 150),
    this.color = Colors.white,
    required VoidCallback onPressed,
    Color backgroundColor = const Color.fromARGB(0, 0, 0, 0),
  }) : super(key: key, onPressed: onPressed, backgroundColor: backgroundColor);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/icons/image.png');
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
            left: 35,
            top: 20,
            child: Container(
              width: (79 / 150) * size.width,
              height: (79 / 150) * size.height,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(0, 1, 1, 1)),
              child: Image(image: assetImage),
            ),
          ),
          Positioned(
            left: 58,
            top: 117,
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
