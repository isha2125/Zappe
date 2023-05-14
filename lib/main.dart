import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Zappe",
      theme: ThemeData(
        primaryColor: const Color(0xFF37CAEC),
        useMaterial3: true,
        textTheme: GoogleFonts.outfitTextTheme(),
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(Controller());
      }),
      // home: Splash(),
      home: const HomePage(),
    ),
  );
}
