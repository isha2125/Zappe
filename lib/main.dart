import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/pages/home_page.dart';
import 'package:zappe/screens/booking/booking.dart';
import 'package:zappe/screens/payment/payment.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Zappe",
      theme: ThemeData(
        primaryColor: const Color(0xFF37CAEC),
        useMaterial3: true,
        fontFamily: GoogleFonts.outfit().fontFamily,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(Controller());
      }),
      // home: Splash(),
      home: Booking(),
    ),
  );
}
