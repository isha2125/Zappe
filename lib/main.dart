import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/pages/home_page.dart';
import 'package:zappe/pages/shops_page.dart';
import 'package:zappe/pages/subscription_page.dart';
import 'package:zappe/screens/booking/booking.dart';
import 'package:zappe/screens/drw_scr/about.dart';
import 'package:zappe/screens/drw_scr/faqs.dart';
import 'package:zappe/screens/drw_scr/referal.dart';
import 'package:zappe/screens/drw_scr/trips.dart';
import 'package:zappe/screens/payment/payment.dart';
import 'package:zappe/screens/splash/splash.dart';

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
      routes: {
        "/": (context) => const HomePage(),
        "/booking": (context) => Booking(),
        "/payment": (context) => const Payment(),
        "/splash": (context) => Splash(),
        "/subscriptions": (context) => const Subscription(),
        "/faq": (context) => const FaqsPage(),
        "/about": (context) => const AboutPage(),
        "/trips": (context) => const TripsPage(),
        "/shop": (context) => const Shops(),
        "/referal": (context) => const ReferalPage(),
      },
      initialRoute: "/login",
    ),
  );
}
