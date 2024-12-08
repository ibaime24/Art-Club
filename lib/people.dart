//people page
import 'package:flutter/material.dart';
import 'package:arthub_demo/explore_bar.dart';
import 'bottom_nav_bar.dart';

class Explorepeoplepage extends StatelessWidget {
  const Explorepeoplepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const ExploreAppBar()
        ],
      ),
      bottomNavigationBar:  BottomNavBar(),
    );
  }
}

