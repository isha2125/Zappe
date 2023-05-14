import 'package:flutter/material.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  //int indexs = 2;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                const SliverAppBar(
                  backgroundColor: Colors.black,
                  title: Text("Shop_Name"),
                )
              ],
          body: CustomScrollView(slivers: [
            const SliverToBoxAdapter(
              child: CustomTabBar(),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return const ListTile(
                title: Text("hello"),
              );
            })),
          ])),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

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
          color: const Color(0xffD9D9D9),
        ),
        child: TabBar(
            labelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xff979797)),
            tabs: const [
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
