//shops.dart
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
            backgroundColor: Colors.black,
            title: Text("Shop Name"),
            leading: IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: () {},
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTabBar(),
          ),
          SliverFillRemaining(
            child: Container(
              color: Color.fromRGBO(55, 202, 236, 0.6),
              child: TabBarView(children: [
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return vehicleCard();
                  }),
                  itemCount: 4,
                ),
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return vehicleCard();
                  }),
                  itemCount: 4,
                ),
                ListView.builder(
                  itemBuilder: ((context, index) {
                    return vehicleCard();
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
  //const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height *
            0.08, //AppBar().preferredSize.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xffD9D9D9),
        ),
        child: TabBar(
            labelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff97979799)),
            tabs: [
              Tab(
                text: "Scooties",
              ),
              Tab(
                text: "Bikes",
              ),
              Tab(
                text: "Cars",
              )
            ]),
      ),
    );
  }
}

class vehicleCard extends StatelessWidget {
  const vehicleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/scooty.png",
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20)))),
              onPressed: () {},
              child: Container(
                //color: Colors.black,
                width: MediaQuery.of(context).size.width * 0.483,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Vehicle Name",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w600),
                          ),
                          Icon(Icons.star_rounded)
                        ],
                      ),
                    ),
                    Text(
                      "Vehicle Number",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff37CAEC)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Serviced on:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: " 30/05/23",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Serviced on:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: " 30/05/23",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Serviced on:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: " 30/05/23",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "Serviced on:",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                            children: [
                          TextSpan(
                              text: " 30/05/23",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff37CAEC)))
                        ])),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: RichText(
                          text: TextSpan(
                              text: "Pricing: ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300),
                              children: [
                            TextSpan(
                                text: "\$\$",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff37CAEC)))
                          ])),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
