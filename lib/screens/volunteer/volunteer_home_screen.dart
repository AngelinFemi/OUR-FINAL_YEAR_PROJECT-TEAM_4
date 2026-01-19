import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class VolunteerHomeScreen extends StatelessWidget {
  // Example markers (replace later with Firebase data)
  final List<Marker> markers = [
    Marker(
      point: LatLng(12.9716, 77.5946),
      width: 80,
      height: 80,
      builder: (ctx) => Icon(Icons.location_on, color: Colors.red, size: 40),
    ),
    Marker(
      point: LatLng(12.9725, 77.5950),
      width: 80,
      height: 80,
      builder: (ctx) => Icon(Icons.location_on, color: Colors.blue, size: 40),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nearby Food')),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(12.9716, 77.5946),
          zoom: 14.0,
        ),
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(markers: markers),
        ],
      ),
    );
  }
}

