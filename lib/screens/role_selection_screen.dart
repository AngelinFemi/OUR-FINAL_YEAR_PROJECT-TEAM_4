import 'package:flutter/material.dart';
import 'location_screen.dart';

class RoleSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select Your Role', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LocationScreen(role: 'Donor')));
              },
              child: Text('Donor'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LocationScreen(role: 'Volunteer')));
              },
              child: Text('Volunteer'),
            ),
          ],
        ),
      ),
    );
  }
}
