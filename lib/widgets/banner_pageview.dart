import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MBanner {
  final String imageUrl;
  final String gotoUrl;

  MBanner({
    required this.imageUrl,
    required this.gotoUrl,
  });
}

class BannerPageView extends StatelessWidget {
  BannerPageView({
    Key? key,
    required this.banners,
  }) : super(key: key);

  final List<MBanner> banners;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final selectedIndex = 0.obs;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 212,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: (value) => selectedIndex.value = value,
                children: [
                  ...banners.map(
                    (banner) => InkWell(
                      onTap: () {
                        Get.showSnackbar(
                          // style snackbar like google snackbar
                          GetSnackBar(
                            message: banner.gotoUrl,
                            onTap: (snack) => Get.back(),
                            duration: const Duration(seconds: 2),
                            snackPosition: SnackPosition.BOTTOM,
                            margin: const EdgeInsets.all(8),
                            borderRadius: 8,
                            padding: const EdgeInsets.all(16),
                            icon: const Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                            shouldIconPulse: false,
                            maxWidth: Get.width,
                            animationDuration:
                                const Duration(milliseconds: 300),
                          ),
                        );
                      },
                      child: Uri.tryParse(banner.imageUrl) != null
                          ? Image.network(
                              banner.imageUrl,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              banner.imageUrl,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            // dots for pageview postioned at right center
            Positioned(
              bottom: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < banners.length; i++)
                    Obx(
                      () => InkWell(
                        onTap: () {
                          selectedIndex.value = i;
                          pageController.animateToPage(
                            i,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: selectedIndex.value == i ? 16 : 8,
                          height: 5,
                          decoration: BoxDecoration(
                            color: selectedIndex.value == i
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
