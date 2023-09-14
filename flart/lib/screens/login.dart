import 'package:flart/components/login/initialPage.dart';
import 'package:flart/components/login/initialPage/account_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
          builder: (context) => LiquidSwipe(
                initialPage: 1,
                pages: [
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.red[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 200,
                              height: 350,
                              child: Stack(
                                children: <Widget>[
                                  AnimatedPositioned(
                                    top: _visible ? 50.0 : 150.0,
                                    duration: const Duration(seconds: 2),
                                    curve: Curves.fastOutSlowIn,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _visible = !_visible;
                                        });
                                      },
                                      child: AccountWidget(
                                          name: 'name',
                                          image: const AssetImage(
                                              'assets/icons/image.png'),
                                          size: Size(150, 150),
                                          color: Colors.yellow,
                                          onPressed: () {
                                            setState(() {
                                              _visible = !_visible;
                                            });
                                          }),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              height: 350,
                              child: Stack(
                                children: <Widget>[
                                  AnimatedPositioned(
                                    top: _visible ? 50.0 : 150.0,
                                    duration: const Duration(seconds: 2),
                                    curve: Curves.fastOutSlowIn,
                                    child: AnimatedOpacity(
                                      opacity: _visible ? 1 : 0,
                                      duration:
                                          const Duration(milliseconds: 2000),
                                      child: AccountWidget(
                                        name: 'name',
                                        image: const AssetImage(
                                            'assets/icons/image.png'),
                                        size: const Size(150, 150),
                                        color: Colors.red,
                                        onPressed: () {
                                          setState(() {
                                            _visible = !_visible;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
                onPageChangeCallback: _handlePageOnChange,
              )),
    );
  }

  void _handlePageOnChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _visible = false;
          break;
        case 1:
          _visible = true;
          break;
        case 2:
          _visible = false;
          break;
      }
    });
  }

  void _trigger() {
    setState(() {
      _visible = !_visible;
      print('trigger on');
    });
  }
}
