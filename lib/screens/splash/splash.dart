import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:zappe/screens/auth/login.dart';

class Splash extends StatefulWidget {
  Splash({super.key}) {
    timer = Timer(const Duration(seconds: 3), () {
      Get.offAll(
        () => const Login(),
        transition: Transition.rightToLeft,
        duration: const Duration(milliseconds: 1000),
      );
    });
  }

  Timer? timer;

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void dispose() {
    widget.timer?.cancel();
    super.dispose();
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
