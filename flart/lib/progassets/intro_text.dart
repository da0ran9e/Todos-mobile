import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  final Size size;

  IntroText({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        decoration: ShapeDecoration(
          color: const Color(0x00D9D9D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: (38 / 200) * size.width,
              height: (49 / 110) * size.height,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (26 / 200) * size.width,
                    height: (49 / 110) * size.height,
                    child: const Text(
                      'H',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: (38 / 200) * size.width,
              height: (49 / 110) * size.height,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (26 / 200) * size.width,
                    height: (49 / 110) * size.height,
                    child: const Text(
                      'E',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: (38 / 200) * size.width,
              height: (49 / 110) * size.height,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (26 / 200) * size.width,
                    height: (49 / 110) * size.height,
                    child: const Text(
                      'L',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: (38 / 200) * size.width,
              height: (49 / 110) * size.height,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (26 / 200) * size.width,
                    height: (49 / 110) * size.height,
                    child: const Text(
                      'L',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: (38 / 200) * size.width,
              height: (49 / 110) * size.height,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: (26 / 200) * size.width,
                    height: (49 / 110) * size.height,
                    child: const Text(
                      'O',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
