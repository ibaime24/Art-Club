//tags page
//people page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:arthub_demo/explore_bar.dart';

class Exploretagspage extends StatelessWidget {
  const Exploretagspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const ExploreAppBar()
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}




