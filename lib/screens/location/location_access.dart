import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(20.5937, 78.96), zoom: 0);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
