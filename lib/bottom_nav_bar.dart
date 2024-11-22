// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import '/text_styles.dart';
import 'explore_art.dart';
import 'untitled_no_207.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  

// This widget is the nav bar.
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          onTap: (index) {
            if (index == 0) { //home button ( links to untitled no 207)
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => UntitledArt())
                );
          } else if (index == 1) { //gallery button
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => ExploreArtPage())
                );
            };
            //all other buttons (indeces) do nothing
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.palette),
              label: 'Gallery',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]
    );
  }
}
