import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicons_brands/uicons_brands.dart';
import 'package:zappe/components/datetime_picker.dart';
import 'package:zappe/contexts/controller.dart';
import 'package:zappe/screens/auth/login.dart';
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
              () => Theme(
                data: Theme.of(context).copyWith(
                  textTheme: GoogleFonts.reemKufiTextTheme(),
                ),
                child: WeeklyDatePicker(
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
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF37CAEC),
        child: Column(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(color: Colors.transparent),
              ),
              child: DrawerHeader(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    // circle avatar with border
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black87,
                          width: 2,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 36,
                        backgroundImage: NetworkImage(
                          "https://unavatar.io/twitter/cristiano",
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Rick Astley",
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
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Divider(
                      height: 1,
                      thickness: 2,
                      color: Colors.black38,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                        "assets/person.svg",
                      ),
                      title: const Text(
                        "Accounts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      minLeadingWidth: 36,
                      onTap: () {
                        Get.toNamed("/accounts");
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                        "assets/creditcard.svg",
                      ),
                      title: const Text(
                        "Subscriptions",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      minLeadingWidth: 36,
                      onTap: () {
                        Get.toNamed("/subscriptions");
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                        "assets/arrow_left_right.svg",
                      ),
                      title: const Text(
                        "Trips",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      minLeadingWidth: 36,
                      onTap: () {
                        Get.toNamed("/trips");
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
                      leading: SvgPicture.asset(
                        "assets/faq.svg",
                      ),
                      title: const Text(
                        "FAQ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      minLeadingWidth: 36,
                      onTap: () {
                        Get.toNamed("/faq");
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                        "assets/gift.svg",
                      ),
                      title: const Text(
                        "Referal and Promocodes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      minLeadingWidth: 36,
                      onTap: () {
                        Get.toNamed("/referal");
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                        "assets/info.svg",
                      ),
                      title: const Text(
                        "About",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      minLeadingWidth: 36,
                      onTap: () {
                        Get.toNamed("/about");
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
                      leading: SvgPicture.asset(
                        "assets/exit.svg",
                      ),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      minLeadingWidth: 36,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 32),
                      onTap: () {
                        Get.to(const Login());
                      },
                    ),
                    const Spacer(),
                    // facebook, twitter, instagram icons in a row
                    Column(
                      children: [
                        const Text(
                          "Follow us on",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                const UIconsBrands().instagram,
                                size: 28,
                                color: Colors.pink.shade400,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                const UIconsBrands().facebook,
                                size: 30,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                const UIconsBrands().twitter,
                                size: 30,
                                color: Colors.blue.shade400,
                              ),
                            ),
                          ],
                        ),
                        // made with love by srmites
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Made with ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.heart_fill,
                              color: Colors.red,
                              size: 20,
                            ),
                            Text(
                              " by SRMITES",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Home(),
    );
  }
}
