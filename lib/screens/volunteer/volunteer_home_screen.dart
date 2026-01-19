import 'package:flutter/material.dart';
import 'pickup_detail_screen.dart';

class VolunteerHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Volunteer Home')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Nearby Food Donations', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          // Example Food Card
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => PickupDetailScreen()));
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Veg Biryani', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Quantity: 50 servings'),
                    Text('Location: City Hall'),
                    Text('Posted: 10:00 AM'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
