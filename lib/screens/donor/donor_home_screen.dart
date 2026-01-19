import 'package:flutter/material.dart';
import 'post_food_screen.dart';
import 'donor_food_detail_screen.dart';

class DonorHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donor Home')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Your Food Donations', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          // Example Food Card
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => DonorFoodDetailScreen()));
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
                    Text('Pickup Status: Pending'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => PostFoodScreen()));
            },
            icon: Icon(Icons.add),
            label: Text('Post New Food'),
          ),
        ],
      ),
    );
  }
}
