import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kgooglePlex = CameraPosition(
    target: LatLng(26.144518, 91.736237),
    zoom: 14,
  );

  final List<Marker> _marker = [];
  final List<Marker> _list = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(26.144518, 91.736237),
      infoWindow: InfoWindow(title: "My Position"),
    )
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Surroundings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.left,
        ),
        elevation: 0,
        backgroundColor: Colors.lightGreen[200],
      ),
      body: GoogleMap(
        initialCameraPosition: _kgooglePlex,
        markers: Set<Marker>.of(_marker),
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
