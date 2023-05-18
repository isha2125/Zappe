//shops.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  //int indexs = 2;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            title: const Text(
              "Shop Name",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              icon: const Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTabBar(),
          ),
          SliverFillRemaining(
            child: Container(
              color: const Color.fromRGBO(55, 202, 236, 0.6),
              child: TabBarView(children: [
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return const vehicleCard();
                  }),
                  itemCount: 4,
                ),
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return const vehicleCard();
                  }),
                  itemCount: 4,
                ),
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return const vehicleCard();
                  }),
                  itemCount: 4,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  //const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.all(16.0),
      child: TabBar(
        labelColor: Colors.black,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade300,
        ),
        splashBorderRadius: BorderRadius.circular(20),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Text(
              "Mopeds",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Text(
              "Bikes",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Text(
              "Cars",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class vehicleCard extends StatelessWidget {
  const vehicleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  Image.asset(
                    "assets/scooty.png",
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const Text(
                    "Dio",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "TN 01 AB 2345",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      //  color: Color(0xff37CAEC)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Features",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                        text: const TextSpan(
                            text: "Fuel Capacity:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: " 20L",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                        text: const TextSpan(
                            text: "Mileage: ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: "50 kmpl",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                        text: const TextSpan(
                            text: "Top Speed:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: "120kmph",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const RadialGradient(
                          center: Alignment(0.2, 0.5333),
                          radius: 4,
                          colors: [
                            Color.fromRGBO(35, 181, 211, 0.8),
                            Color.fromRGBO(97, 0, 255, 0.8),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: RichText(
                          text: const TextSpan(
                            text: "Pricing: ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: "Rs.175",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 47,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/booking");
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xff37caec),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(19),
                          ),
                        ),
                      ),
                      child: const Text(
                        "BOOK NOW",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
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
