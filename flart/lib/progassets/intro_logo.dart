import 'package:flutter/material.dart';

class IntroLogo extends StatelessWidget {
  final Size size;

  IntroLogo({
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: ShapeDecoration(
                color: const Color.fromARGB(255, 242, 145, 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: SizedBox(
                width: (14 / 171) * size.width,
                height: (89 / 171) * size.height,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: (107 / 171) * size.width,
                      height: (98.54 / 171) * size.height,
                      child: Stack(
                        children: [
                          Positioned(
                            left: (35.78 / 171) * size.width,
                            top: 0,
                            child: Container(
                              width: (17.11 / 171) * size.width,
                              height: (89 / 171) * size.height,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFFF1515),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20)),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (12 / 171) * size.width,
                            top: 0,
                            child: Container(
                              width: (17.11 / 171) * size.width,
                              height: (89 / 171) * size.height,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFFF1515),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20)),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: (12 / 171) * size.width,
                            top: (20.90 / 171) * size.height,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(-0.69),
                              child: Container(
                                width: (17.11 / 171) * size.width,
                                height: (122.61 / 171) * size.height,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFFF1515),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
