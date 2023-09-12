import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final Size size;
  final String name;
  final Image image;
  final Color color;

  const AccountWidget(
      {Key? key,
      required this.name,
      required this.image,
      required this.size,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            ),
          ),
          const Positioned(
            left: 58,
            top: 117,
            child: Text(
              'Name',
              style: TextStyle(
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
