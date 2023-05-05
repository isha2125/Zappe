import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  //int indexs = 2;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Text("Shop_Name"),
          )
        ],
        body: CustomTabBar(),
        // body: ListView.builder(itemBuilder: (context, index) {
        //   return ListTile(title: Text("bike"));
        // }),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  //const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, //AppBar().preferredSize.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff979797),
      ),
      child: TabBar(tabs: [
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
    );
  }
}
