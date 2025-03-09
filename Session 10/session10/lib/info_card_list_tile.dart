import 'package:flutter/material.dart';

class InfoCardListTile extends StatelessWidget {
  const InfoCardListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Oeschinen Lake Campground",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.location_on, color: Colors.red),
          Text(
            "Kandersteg, Switzerland",
            style: TextStyle(color: Colors.grey[600], fontSize: 18),
          ),
        ],
      ),
      trailing: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFFFE9EE),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.deepOrange),
              SizedBox(width: 5),
              Text("4.1", style: TextStyle(color: Colors.deepOrange)),
            ],
          ),
        ),
      ),
    );
  }
}
