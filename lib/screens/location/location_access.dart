import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class location extends StatelessWidget {
  const location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(12.8217893, 80.039836),
          zoom: 17.0,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('marker_1'),
            position: LatLng(12.8217893, 80.039836),
          ),
        },
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        height: 250,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "LOCATION",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Grant location permission to enhance your app experience by accessing nearby services and providing personalized recommendations based on your current location",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Get.offAllNamed('/');
                      },
                      child: const Text(
                        'Confirm Location',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 10.0), // Adds space between the buttons
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Get.offAllNamed('/');
                      },
                      child: const Text(
                        'Not Now',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
