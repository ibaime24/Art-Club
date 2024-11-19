//explore art page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:arthub_demo/explore_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreArtPage extends StatefulWidget {
  const ExploreArtPage({super.key});

  @override
  State<ExploreArtPage> createState() => _ExploreArtPageState();
}

class _ExploreArtPageState extends State<ExploreArtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ExploreAppBar(),
      backgroundColor: Colors.white,
              body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 62),
            child: MasonryGridView.builder(
                itemCount: 5,
                gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => Container( // Add Container
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration( // Add decoration
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [ // Optional: adds subtle shadow
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'images/index$index.jpg',
                      fit: BoxFit.cover, // Ensures image fills the space
                    ),
                  ),
                ),
            ),
        ),
        bottomNavigationBar: const BottomNavBar(),
    );//scaffold
  }
}


