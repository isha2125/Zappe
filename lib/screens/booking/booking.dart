import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore: must_be_immutable
class Booking extends StatelessWidget {
  Booking({super.key});

  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  Timer? timer;

  get booked {
    if (Get.arguments != null) {
      return Get.arguments["booked"];
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Honda Dio",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            timer?.cancel();
            Get.offAndToNamed(Get.previousRoute);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        leadingWidth: 56 + 16.0,
      ),
      body: SizedBox(
        height: Get.height / 1.8 - kToolbarHeight,
        child: GoogleMap(
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          myLocationEnabled: true,
          compassEnabled: true,
          myLocationButtonEnabled: false,
          mapType: MapType.normal,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          initialCameraPosition: const CameraPosition(
            target: sourceLocation,
            zoom: 14.5,
          ),
          markers: {
            const Marker(
              markerId: MarkerId("sourceLocation"),
              position: sourceLocation,
            ),
          },
        ),
      ),
      bottomSheet: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: Get.height / 2 -
                kToolbarHeight, // Adjust height based on content
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  const Text(
                    "Honda Dio",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        FeatureItem(
                          title: "Diesel",
                          subtitle: "Common Rail Fuel Injection",
                          icon: Icons.local_gas_station,
                        ),
                        FeatureItem(
                          title: "Diesel",
                          subtitle: "Common Rail Fuel Injection",
                          icon: Icons.local_gas_station,
                        ),
                        FeatureItem(
                          title: "Diesel",
                          subtitle: "Common Rail Fuel Injection",
                          icon: Icons.local_gas_station,
                        ),
                        FeatureItem(
                          title: "Diesel",
                          subtitle: "Common Rail Fuel Injection",
                          icon: Icons.local_gas_station,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "₹ 100 / hr",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // make button disabled when booked is true
                      ElevatedButton(
                        onPressed: booked
                            ? null
                            : () {
                                Get.toNamed("/payment");
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          booked ? "Collect the Vehicle" : "Confirm Booking",
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: -120,
            height: 240,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                "assets/scooty.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 48,
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
