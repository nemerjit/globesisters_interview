import 'package:flutter/material.dart';



class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0

          

        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,          
            children: [
              ClipOval(
                child: Image.asset(
                'assets/images/spongebob.jpg',
                width: 150,
                height: 150


                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Spongebob Squarepants',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
              ),
              const SizedBox(height: 5),
              const Text(
                'Age: 23',
                style: TextStyle(fontSize: 15)

              ),
              const SizedBox(height: 15),
              Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    const Text('Rating', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    const Text('5.0')
                  ],),
                  Column(children: [
                    Text('Reviews', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text('35')
                  ],),
                  Column(children: [
                    const Text('Trips', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    const Text('32')
                  ],),
                ],),


              const SizedBox(height: 25),

              const Text ('Bikini Bottom', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

              const SizedBox(height: 25),

              const Text('About:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              const Text('Hi, I am Spongebob and I like this app.'),
              
              ],),
        ),
      
    );
  }
}