import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InTrend', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.cartShopping),
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // spreadRadius: 0.1,
                    color: const Color.fromARGB(85, 0, 0, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("HandBack LX"),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("HandBack LX"),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -75,
              right: 20,
              child: Image.network(
                'https://pngimg.com/d/shopping_bag_PNG6389.png',
                height: 125,
                width: 125,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
