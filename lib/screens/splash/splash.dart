import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:zappe/screens/auth/login.dart';

class Splash extends StatelessWidget {
  Splash({super.key}) {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(
        () => const Login(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 1000),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RiveAnimation.asset(
        "assets/splash.riv",
        fit: BoxFit.cover,
      ),
    );
  }
}
