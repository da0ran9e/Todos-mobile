import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../widgets/otp_form.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key, required this.controller});
  final PageController controller;
  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String? varifyCode;

  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    double mainHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12, right: 0),
            child: Image.asset(
              "assets/login_vectors/vector-3.png",
              width: (428 / 457) * (mainHeight - 350),
              height: mainHeight - 350,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Confirm the code\n',
                  style: TextStyle(
                    color: Color(0xFF755DC1),
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: (329 / 428) * mainWidth,
                  height: 56,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: const Color(0xFF9F7BFF)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: OtpForm(
                      callBack: (code) {
                        varifyCode = code;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: SizedBox(
                    width: (329 / 428) * mainWidth,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9F7BFF),
                      ),
                      child: const Text(
                        'confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Resend  ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF755DC1),
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TimerCountdown(
                      spacerWidth: 0,
                      enableDescriptions: false,
                      colonsTextStyle: const TextStyle(
                        color: Color(0xFF755DC1),
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      timeTextStyle: const TextStyle(
                        color: Color(0xFF755DC1),
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      format: CountDownTimerFormat.minutesSeconds,
                      endTime: DateTime.now().add(
                        const Duration(
                          minutes: 2,
                          seconds: 0,
                        ),
                      ),
                      onEnd: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
              onTap: () {
                widget.controller.animateToPage(1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              },
              child: const Text(
                'A 6-digit verification code has been sent to info@aidendesign.com',
                style: TextStyle(
                  color: Color(0xFF837E93),
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
