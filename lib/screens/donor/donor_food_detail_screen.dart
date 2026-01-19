import 'package:flutter/material.dart';

class DonorFoodDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food Details')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Veg Biryani', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Quantity: 50 servings'),
            Text('Location: City Hall'),
            Text('Posted: 10:00 AM'),
            SizedBox(height: 20),
            Text('Pickup Status: Pending'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Confirm Pickup by Volunteer
              },
              child: Text('Confirm Pickup'),
            )
          ],
        ),
      ),
    );
  }
}
