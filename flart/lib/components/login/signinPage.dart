import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ThirdBackground extends StatefulWidget {
  const ThirdBackground({super.key});

  @override
  State<ThirdBackground> createState() => _ThirdBackgroundState();
}

class _ThirdBackgroundState extends State<ThirdBackground> {
  PageController controller = PageController(initialPage: 0);
  late StateMachineController _controller;
  late SMIInput<double>? input;
  double count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          RiveAnimation.asset(
            'assets/login_initial/tree-demo.riv',
            fit: BoxFit.fitHeight,
            onInit: (p0) => {
              _controller =
                  StateMachineController.fromArtboard(p0, "State Machine 1")!,
              p0.addController(_controller),
              input = _controller.findInput("input"),
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
              ),
              FloatingActionButton(
                onPressed: () => {input?.change(count += 10)},
              )
            ],
          )
        ],
      )),
    );
  }
}
