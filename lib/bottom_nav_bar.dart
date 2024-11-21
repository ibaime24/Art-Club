// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              icon: Icon(Icons.publish_outlined),
              label: 'gallery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.publish_outlined),
              label: 'post',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
              color: Colors.black,
              height: 40),
              label: 'test'
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
              color: Colors.black,
              height: 24,
              width: 24),
              label: 'test'
            ),
          ]
    );
  }
}
