import 'package:flutter/material.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FAQs .',
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
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 40,
              ),
              Card(
                color: const Color.fromARGB(255, 226, 224, 224),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'How can i pay my violation charges?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: 170.0,
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 226, 224, 224),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'How can I add new payment options?',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: 170.0,
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 226, 224, 224),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Where can i see an explanation for my violation charge?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: 170.0,
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 226, 224, 224),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'How can I change my profile settings?',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: 170.0,
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 226, 224, 224),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'How can I save standard locations?',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: 170.0,
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 226, 224, 224),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'How can I contact a rental owner?',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          width: 170.0,
                          height: 2.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
