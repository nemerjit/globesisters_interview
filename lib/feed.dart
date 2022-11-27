
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});
  static const List<String> images = ['assets/images/boba.jpg', 'assets/images/otherboba.jpg', 'assets/images/pizza.jpg', 'assets/images/ravioli.jpg', 'assets/images/tiramisu.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Image.asset (
            images[index]
          );
        },
        itemCount: images.length,
        scrollDirection: Axis.vertical, 
        physics: const BouncingScrollPhysics(),
      )
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   addAutomaticKeepAlives: false,
      //   children: [
      //     Image.asset(
      //       'assets/images/boba.jpg',
            
      //     ),
      //     Image.asset(
      //       'assets/images/otherboba.jpg',
            
            
      //     ),
      //     Image.asset(
      //       'assets/images/pizza.jpg',
            
      //     ),
      //     Image.asset(
      //       'assets/images/ravioli.jpg',
            
      //     ),
      //     Image.asset(
      //       'assets/images/tiramisu.jpg',
            
      //     ),
      //   ],
      // )
    );
  }
}