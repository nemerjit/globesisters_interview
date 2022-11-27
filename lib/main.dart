import 'package:flutter/material.dart';
import 'package:globesisters_nemer_app/profile.dart';
import 'package:globesisters_nemer_app/feed.dart';
import 'package:globesisters_nemer_app/post.dart';
        
void main() {
  runApp( MyApp() );
}        
      
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
    );
  }
}


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Feed(), const Post(), const Profile()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar (

          onTap: onTappedBar,
          currentIndex: _currentIndex,

          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Feed',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Profile',
              )
          ],
        ),
    );
  }
}