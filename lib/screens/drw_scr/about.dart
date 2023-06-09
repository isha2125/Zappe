import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About .',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        toolbarHeight: 90.0,
      ),
      body: Container(
        color: const Color(0xFF98D5E4),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 100.0),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.25,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'User Guidelines',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.25,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.25,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Terms of Service',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.25,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Licences and Registrations',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.25,
                  ),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'App Version',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 200.0,
        child: Stack(
          children: [
            Positioned(
              left: 80.0,
              bottom: 150.0,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/insta.png',
                  height: 37,
                  width: 37,
                ),
              ),
            ),
            Positioned(
              bottom: 150.0,
              left: 190,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/meta.png',
                  height: 37,
                  width: 37,
                ),
              ),
            ),
            Positioned(
              right: 80.0,
              bottom: 150.0,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/twitter.png',
                  height: 37,
                  width: 37,
                ),
              ),
            ),
            Positioned(
              right: 165,
              bottom: 20,
              child: Image.asset(
                "assets/Zappe_logo.png",
                height: 46,
                width: 102,
              ),
            ),
            Positioned(
              right: 112.5,
              bottom: 80,
              child: Image.asset(
                "assets/copyright.png",
                height: 38,
                width: 220,
              ),
            )
          ],
        ),
      ),
    );
  }
}
