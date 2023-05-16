import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zappe/components/datetime_picker.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/screens/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search, color: Colors.white),
          ),
        ],
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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 36,
                    backgroundImage: NetworkImage(
                      "https://unavatar.io/github/flaminshinjan",
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Shinjan Patra",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "+91 9876543210",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // i need 5 list tiles with icons: accounts, subscriptions, trips, faq, referal and promocodes and about
            ListTile(
              leading: const Icon(CupertinoIcons.person_fill),
              title: const Text("Accounts"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.creditcard),
              title: const Text("Subscriptions"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.car),
              title: const Text("Trips"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 12,
              endIndent: 12,
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.question_circle),
              title: const Text("FAQ"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.gift),
              title: const Text("Referal and Promocodes"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.info_circle),
              title: const Text("About"),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 12,
              endIndent: 12,
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.square_arrow_left),
              title: const Text("Logout"),
              // tileColor: Colors.black.withOpacity(0.06),
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {
                Get.back();
              },
            ),
            // TextButton.icon(
            //   onPressed: () {},
            //   style: TextButton.styleFrom(
            //     backgroundColor: Colors.red,
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            //     shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.only(
            //       topRight: Radius.circular(12),
            //       bottomRight: Radius.circular(12),
            //     )),
            //     alignment: Alignment.centerLeft,
            //   ),
            //   icon: const Icon(
            //     CupertinoIcons.square_arrow_left,
            //     color: Colors.white,
            //     size: 20,
            //   ),
            //   label: const Text(
            //     "Logout",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 18,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      body: const Home(),
    );
  }
}
