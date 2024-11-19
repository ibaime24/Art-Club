//clubs page
import 'package:arthub/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:arthub_demo/explore_bar.dart';

class Clubspage extends StatelessWidget {
  const Clubspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ExploreAppBar(),
          body: Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'interaction-design-arts,'),
                child: const Text('Go to interaction deisgn arts'),
              ),
            ),
      bottomNavigationBar: const BottomNavBar(),        
      );
  }
}

// ElevatedButton(
//                 onPressed: () => Navigator.pushNamed(context, 'interaction-design-arts,'),
//                 child: const Text('Go to interaction deisgn arts'),
//               ),