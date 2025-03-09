import 'package:flutter/material.dart';

import 'about_botton.dart';
import 'info_card.dart';
import 'info_string.dart';
import 'stack_image.dart';

void main() {
  runApp(const Session10());
}

class Session10 extends StatelessWidget {
  const Session10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Travel Destination"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.bookmark_border_outlined),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image
              StackImages(),

              // Info Card
              InfoCard(),

              // About Button
              AboutBotton(),

              // Long Text
              InformationString(),
            ],
          ),
        ),
      ),
    );
  }
}
