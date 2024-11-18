import 'package:flutter/material.dart';



class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  

// This widget is the nav bar.
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,

          items: const <BottomNavigationBarItem>[
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
              icon: Icon(Icons.save),
              label: 'save',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'profile',
            ),
          ],
          // currentIndex : _selectedIndex,
          // onTap: _onItemTapped,
    );
  }
}
