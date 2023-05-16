import 'package:flutter/material.dart';

class Trips extends StatelessWidget {
  const Trips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trips"),
      ),
      body: const Center(
        child: Text("TRIPS SCREEN!!!"),
      ),
    );
  }
}
