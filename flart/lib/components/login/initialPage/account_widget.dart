import 'dart:io' as io;

import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final Size size;
  final String name;
  final AssetImage? image;
  final Color? color;

  const AccountWidget(
      {Key? key,
      this.name = 'name',
      required this.image,
      this.size = const Size(150, 150),
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/icons/image.png');
    return Container(
      decoration: BoxDecoration(color: color),
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
                color: const Color(0xFFD9D9D9),
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
              decoration: const BoxDecoration(color: Color(0xFF939393)),
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
