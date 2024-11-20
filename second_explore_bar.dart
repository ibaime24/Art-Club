//top nav bar #2- present on IDA and art page

import 'package:flutter/material.dart';

class SecondExploreBar extends StatelessWidget {
  const SecondExploreBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = screenHeight * 0.1; // 20% of screen height
    final horizontalPadding = 16.0;

    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      pinned: false,
      floating: true,
      snap: false,
      expandedHeight: appBarHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                  color: Colors.black,
                ),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {},
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
