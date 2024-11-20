//scatter art page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'text_styles.dart';
import 'scatter_art.dart';

class InteractionDesignArts extends StatelessWidget {
  const InteractionDesignArts ({super.key});


  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    final idaHeight = screenHeight * 0.2;      // 20% of screen height
    final horizontalPadding = screenWidth * 0.05; // 5% padding
    final verticalSpacing = screenHeight * 0.02;  // 2% spacing
    final gridSpacing = screenWidth * 0.01;       // 2% grid spacing

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/index6.png', 
                  width: double.infinity,
                  height: idaHeight,
                  fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: verticalSpacing,),
                      child: Text(
                        'Interaction Deisgn Arts', 
                        style: AppTextStyles.h1),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding),
                      child: Text(
                        'Practice led, experimental course taught at UALs London College of Communication',
                        style: AppTextStyles.h3),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: verticalSpacing),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Gallery', style: AppTextStyles.h2),

                          Text('Members', style: AppTextStyles.h2.copyWith(color: Colors.grey)),
                        ],
                        ),
                      ),
                      
                  ],
                )
              ),
          //link button start
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScatterArtPage()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: verticalSpacing),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'View Scatter Art',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //link button end

          SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          sliver: SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: gridSpacing,
              crossAxisSpacing: gridSpacing,
              childCount: 4,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(gridSpacing),
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
                    'images/index${index + 9}.png',  // Start from index9.png
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ),
        ]
      ),
      bottomNavigationBar:  BottomNavBar(),
    );
  }
}
