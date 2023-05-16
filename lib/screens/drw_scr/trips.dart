import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trips',
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
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, bottom: 10, top: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 120,
                          child: GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: LatLng(37.7749, -122.4194),
                              zoom: 12.0,
                            ),
                            markers: {
                              Marker(
                                markerId: MarkerId('marker_1'),
                                position: LatLng(37.7749, -122.4194),
                              ),
                            },
                          ),
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
