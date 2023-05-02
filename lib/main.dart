import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/screens/home/home.dart';
// import 'package:zappe/screens/splash/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Zappe",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(Controller());
      }),
      // home: Splash(),
      home: const Home(),
    ),
  );
}
