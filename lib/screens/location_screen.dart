import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  final String role;
  LocationScreen({required this.role});

  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Your Location')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: locationController,
              decoration: InputDecoration(labelText: 'Enter your city or pin code'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (role == 'Donor') {
                  // TODO: Navigate to Donor Home
                } else {
                  // TODO: Navigate to Volunteer Home
                }
              },
              child: Text('Proceed'),
            ),
          ],
        ),
      ),
    );
  }
}
