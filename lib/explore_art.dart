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
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = screenHeight * 0.2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const ExploreAppBar(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 62),
            sliver: SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childCount: 5,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
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
                    fit: BoxFit.cover,
                  ),),)
            ),
        ),],),
        bottomNavigationBar:  BottomNavBar(),
    );//scaffold
  }
}


