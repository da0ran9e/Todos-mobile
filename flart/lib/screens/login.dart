import 'package:flart/components/login/initialPage.dart';
import 'package:flart/components/login/initialPage/account_widget.dart';
import 'package:flart/components/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            _visible = true;
          });
        });
        return LiquidSwipe(
          initialPage: 0,
          pages: [
            Container(
              color: Colors.red[50],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: _visible ? 0.0 : 150.0,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                              child: AnimatedOpacity(
                                opacity: _visible ? 1 : 0,
                                duration: const Duration(milliseconds: 2000),
                                child: AccountWidget(
                                  name: 'name',
                                  size: const Size(100, 100),
                                  color: Colors.yellow,
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
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: _visible ? 0.0 : 150.0,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                              child: AnimatedOpacity(
                                opacity: _visible ? 1 : 0,
                                duration: const Duration(milliseconds: 2000),
                                child: AccountWidget(
                                  name: 'name',
                                  size: const Size(100, 100),
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: _visible ? 0.0 : 150.0,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                              child: AnimatedOpacity(
                                opacity: _visible ? 1 : 0,
                                duration: const Duration(milliseconds: 2000),
                                child: AccountWidget(
                                  name: 'name',
                                  size: const Size(100, 100),
                                  color: Colors.green,
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
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: _visible ? 0.0 : 150.0,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastOutSlowIn,
                              child: AnimatedOpacity(
                                opacity: _visible ? 1 : 0,
                                duration: const Duration(milliseconds: 2000),
                                child: AccountWidget(
                                  name: 'name',
                                  size: const Size(100, 100),
                                  color: Colors.blue,
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
              color: Colors.green,
              child: LoginPageView(),
            ),
            Container(
              color: Colors.blue,
            ),
          ],
          onPageChangeCallback: _handlePageOnChange,
        );
      }),
    );
  }

  void _handlePageOnChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _visible = true;
          break;
        case 1:
          _visible = false;
          break;
        case 2:
          _visible = false;
          break;
      }
    });
  }
}
