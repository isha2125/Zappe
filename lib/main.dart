import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/screens/splash/splash.dart';

void main() {
  Get.put(Controller());
  runApp(
    GetMaterialApp(
      title: "Zappe",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    ),
  );
}
