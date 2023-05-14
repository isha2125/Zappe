import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/screens/auth/login.dart';
import 'package:zappe/screens/auth/signup.dart';
import 'package:zappe/screens/drw_scr/about.dart';
import 'package:zappe/screens/drw_scr/faqs.dart';
import 'package:zappe/screens/drw_scr/referal.dart';
import 'package:zappe/screens/splash/splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zappe/pages/home_page.dart';
// import 'package:zappe/screens/splash/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Zappe",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme()),
      initialBinding: BindingsBuilder(() {
        Get.put(Controller());
      }),
      // home: Splash(),
      home: const HomePage(),
    ),
  );
}
