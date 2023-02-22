import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Maps trustme App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: 
      
      
      GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("1"),
            position: _center,
            //icon: markerbitmap
          ),
        },
        circles: {
          Circle(
            circleId: CircleId("1"),
            center: _center,
            radius: 200,
            strokeWidth: 2,
            fillColor: Color.fromARGB(255, 139, 34, 27).withOpacity(0.5),
          ),
        },
      ),
    
    
    ));
  }
}
