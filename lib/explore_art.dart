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
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 62),
          child: MasonryGridView.builder(
            itemCount: 5,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,),
          itemBuilder: (context,index) => Padding(
            padding: const EdgeInsets.all(8),
              child: Image.asset('images/index$index.jpg')
            )
        )
        ),
      bottomNavigationBar: const BottomNavBar(),
    );//scaffold
  }
}