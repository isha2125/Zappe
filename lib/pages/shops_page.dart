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
      child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  title: Text("Shop_Name"),
                )
              ],
          body: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: CustomTabBar(),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                title: Text("hello"),
              );
            })),
          ])),
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
