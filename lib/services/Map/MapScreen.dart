import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late Future<Position> userPosition;
  Completer<GoogleMapController> _controller = Completer();

  

  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(26.144518, 91.736237),
        infoWindow: InfoWindow(title: "My Position"))
  ];

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print("error" + error.toString());
    });

    return await Geolocator.getCurrentPosition();
  }

@override
  void initState() {
    super.initState();
    userPosition = getUserCurrentLocation(); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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

      body: Column(
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.all(Radius.circular(20)),
               boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  spreadRadius: 2.0,
                  blurRadius: 2.0,
                  
                )
               ]
            ),
            child: FutureBuilder<Position>(
              future: userPosition,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.data == null) { 
                  return Text('User position is not available');
                } else {
                  final position = snapshot.data; 
                  return GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(position!.latitude, position.longitude),
                      zoom: 12 
                    ),
                    markers: Set<Marker>.of(_marker),
                    mapType: MapType.normal,
                    myLocationEnabled: true,
                    compassEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  );
                }
              }
            
            ),
          ),
        ],
      ),
      
    );
  }
}
