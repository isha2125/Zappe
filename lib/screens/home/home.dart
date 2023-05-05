import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zappe/components/datetime_picker.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/pages/pages/home_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final get = Controller.to;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/zappe_logo_white.svg",
          height: 40,
        ),
        backgroundColor: const Color(0xFF030B0D),
        toolbarHeight: kToolbarHeight + 12,
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(kToolbarHeight + kTextTabBarHeight + 8),
          child: Container(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
            child: Obx(
              () => WeeklyDatePicker(
                selectedDay: get.selectedDate, // DateTime
                changeDay: (value) => get.selectedDate = value,
                enableWeeknumberText: false,
                weeknumberColor: Colors.white,
                weeknumberTextColor: Colors.black,
                selectedDigitColor: Colors.black,
                backgroundColor: const Color(0xFF030B0D),
                weekdayTextColor: const Color(0xFF8A8A8A),
                digitsColor: Colors.white,
                selectedBackgroundColor: Colors.white,
              ),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: const HomePage(),
    );
  }
}
