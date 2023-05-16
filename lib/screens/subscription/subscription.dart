import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        elevation: 0,
        title: Text(
          "Subscriptions",
          style: TextStyle(fontSize: 40),
          textAlign: TextAlign.center,
        ),
      ),
      body: SubscriptionDeals(),
      // body: Container(
      //   decoration: BoxDecoration(color: Color.fromARGB(55, 35, 190, 233)),
      //   child: subscriptiondescription(),
      //   // child: ListView(
      //   //   children: [
      //   //   //   ListView.builder(
      //   //   //       itemCount: 3,
      //   //   //       itemBuilder: (context, index) {
      //   //   //         return SubscriptionDeals();
      //   //   //       })
      //   //   // ],
      //   // ),
      // ),
    );
  }
}

class SubscriptionDeals extends StatelessWidget {
  const SubscriptionDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(55, 35, 190, 233)),
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
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          //color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "The Routiner",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Color(0xffA2AEBC),
                                  child: Text(
                                    "Trips",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "60",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Color(0xffA2AEBC),
                                  child: Text(
                                    "Trips",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Scooty",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Color(0xffA2AEBC),
                                  child: Text(
                                    "Trips",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff23B5D3),
                              borderRadius: BorderRadius.circular(8)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Details you need to know:",
                                  style: TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Each trip lasts for a maximum of 10 minutes.",
                                  style: TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "An additional fare of Rs. 10 will be charged for every 5 minutes delay \nbeyond the 10 minutes standard time.",
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "First ride is available at 7:30 am and last ride is available at ... read more.",
                                  style: TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(9),
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    color: Color(0xffA2AEBC),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8))),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: "only at:\n",
                                      style: TextStyle(fontSize: 10)),
                                  TextSpan(
                                      text: "Rs. 1500 per month",
                                      style: TextStyle(fontSize: 15))
                                ]))),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                    color: Color(0xff23B5D3),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                    )),
                                child: TextButton(
                                  child: Text(
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