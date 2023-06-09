import 'package:flutter/material.dart';

class subscriptiondescription extends StatelessWidget {
  const subscriptiondescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {},
        // ),
        elevation: 0, surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: const Text(
          "Subscriptions .",
          style: TextStyle(fontSize: 40),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const SubscriptionDeals();
        },
      ),
    );
  }
}

class SubscriptionDeals extends StatelessWidget {
  const SubscriptionDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(55, 35, 190, 233)),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          //color: Colors.black,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "The Routiner",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 220, 224, 228),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Text(
                                      "trips",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: const Text(
                                    "60",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 220, 224, 228),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Text(
                                      "vehicle",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: const Text(
                                    "moped",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 220, 224, 228),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Text(
                                      "model",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: const Text(
                                    "Pertrip renting",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 122, 213, 234),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "details you need to know:",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/round.icon.png",
                                      ),
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Each trip lasts for a maximum of 10 minutes.",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/round.icon.png",
                                      ),
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "An additional fare of Rs. 10 will be charged for every 5 minutes delay \nbeyond the 10 minutes standard time.",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                        "assets/round.icon.png",
                                      ),
                                      height: 8,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "First ride is available at 7:30 am and last ride is available at ... read more.",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(7),
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 220, 224, 228),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8))),
                                child: const Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: "only at:\n",
                                      style: TextStyle(fontSize: 10)),
                                  TextSpan(
                                      text: "Rs. 1500 per month",
                                      style: TextStyle(fontSize: 15))
                                ]))),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 122, 213, 234),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                    )),
                                child: TextButton(
                                  child: const Text(
                                    "ACCESS",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
