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
      body: SingleChildScrollView(
        child: Container(
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
                  color: const Color(0xFF98D5E4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      // Handle button tap
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Text("27-02-2023",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 10),
                              const Text("|"),
                              const SizedBox(width: 10),
                              const Text(
                                "09:15 am",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 65),
                              const Text("TN 10 AV 2345"),
                              const SizedBox(width: 10),
                              Image.asset(
                                "assets/scooty.icon.png",
                                height: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 150,
                            child: GoogleMap(
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
                          ),
                          Row(children: [
                            const Text("Abode Valley "),
                            const SizedBox(width: 5),
                            Image.asset(
                              "assets/round.icon.png",
                              height: 15,
                            ),
                            const SizedBox(width: 150),
                            Image.asset(
                              "assets/blue.round.png",
                              height: 15,
                            ),
                            const SizedBox(width: 5),
                            const Text("SRM College")
                          ]),
                          const Row(
                            children: [
                              Text("*violation charge"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "unpaid",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info_sharp,
                                size: 20,
                              ),
                              SizedBox(
                                width: 125,
                              ),
                              Text(
                                "Rs 50",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color(0xFF98D5E4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      // Handle button tap
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Text("27-02-2023",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 10),
                              const Text("|"),
                              const SizedBox(width: 10),
                              const Text(
                                "09:15 am",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 65),
                              const Text("TN 10 AV 4568"),
                              const SizedBox(width: 10),
                              Image.asset(
                                "assets/scooty.icon.png",
                                height: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 150,
                            child: GoogleMap(
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
                          ),
                          Row(children: [
                            const Text("Estancia "),
                            const SizedBox(width: 5),
                            Image.asset(
                              "assets/round.icon.png",
                              height: 15,
                            ),
                            const SizedBox(width: 175),
                            Image.asset(
                              "assets/blue.round.png",
                              height: 15,
                            ),
                            const SizedBox(width: 5),
                            const Text("SRM College")
                          ]),
                          const Row(
                            children: [
                              Text("*violation charge"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "paid",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info_sharp,
                                size: 20,
                              ),
                              SizedBox(
                                width: 125,
                              ),
                              Text(
                                "Rs 50",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color(0xFF98D5E4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      // Handle button tap
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Text("27-02-2023",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 10),
                              const Text("|"),
                              const SizedBox(width: 10),
                              const Text(
                                "09:15 am",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 65),
                              const Text("TN 10 AV 2345"),
                              const SizedBox(width: 10),
                              Image.asset(
                                "assets/scooty.icon.png",
                                height: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 150,
                            child: GoogleMap(
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
                          ),
                          Row(children: [
                            const Text("Railway Station "),
                            const SizedBox(width: 5),
                            Image.asset(
                              "assets/round.icon.png",
                              height: 15,
                            ),
                            const SizedBox(width: 135),
                            Image.asset(
                              "assets/blue.round.png",
                              height: 15,
                            ),
                            const SizedBox(width: 5),
                            const Text("SRM College")
                          ]),
                          const Row(
                            children: [
                              Text("*violation charge"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "unpaid",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info_sharp,
                                size: 20,
                              ),
                              SizedBox(
                                width: 125,
                              ),
                              Text(
                                "Rs 50",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color(0xFF98D5E4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      // Handle button tap
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Text("27-02-2023",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 10),
                              const Text("|"),
                              const SizedBox(width: 10),
                              const Text(
                                "09:15 am",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 65),
                              const Text("TTN 10 AV 1345"),
                              const SizedBox(width: 9),
                              Image.asset(
                                "assets/scooty.icon.png",
                                height: 20,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 150,
                            child: GoogleMap(
                              initialCameraPosition: const CameraPosition(
                                target: LatLng(12.8217893, 80.039836),
                                zoom: 17.0,
                              ),
                              markers: {
                                const Marker(
                                  markerId: MarkerId('marker_2'),
                                  position: LatLng(12.8217893, 80.039836),
                                ),
                              },
                            ),
                          ),
                          const Row(
                            children: [
                              Text("*violation charge"),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "paid",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info_sharp,
                                size: 20,
                              ),
                              SizedBox(
                                width: 125,
                              ),
                              Text(
                                "Rs 100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
