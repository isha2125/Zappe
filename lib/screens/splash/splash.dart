import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zappe/screens/auth/login.dart';
import 'package:zappe/screens/auth/signup.dart';

class Splash extends StatelessWidget {
  Splash({super.key}) {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(
        () => const Signup(),
        transition: Transition.rightToLeft,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("SPLASH SCREEN!!!"),
      ),
    );
  }
}
