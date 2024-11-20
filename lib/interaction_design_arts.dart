import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'text_styles.dart';
import 'second_explore_bar.dart';
import 'scatter_art.dart'; 

class InteractionDesignArts extends StatelessWidget {
  const InteractionDesignArts({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen size for dynamic spacing
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    // Responsive height and spacing based on screen size
    final idaHeight = screenHeight * 0.2; // 20% of screen height for image height
    final horizontalPadding = screenWidth * 20 / 393; // 5% padding on both sides
    final verticalSpacing = screenHeight * 0.02; // 2% vertical spacing for general use
    final gridSpacing = screenWidth * 0.01; // 1% spacing between grid items

    // gallery images
    final List<String> galleryImages = [
      'images/index9.png',
      'images/index10.png',
      'images/index11.png',
      'images/index12.png',
      'images/index13.png',
      'images/index14.png',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0), // 20-pixel padding around outside border
        child: CustomScrollView(
          slivers: [
            const SecondExploreBar(),
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
                  // 15 pixels spacing between the top image and title
                  SizedBox(height: 15),
                  // Title: Interaction Design Arts
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Text(
                      'Interaction Design Arts',
                      style: AppTextStyles.h1, 
                    ),
                  ),
                  // no padding between title and subtitle
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Text(
                      'Practice led, experimental course taught at UAL’s London College of Communication',
                      style: AppTextStyles.h3,
                    ),
                  ),

                  // Gallery and Members banner
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: verticalSpacing),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Gallery', style: AppTextStyles.h2),
                        Text(
                          'Members',
                          style: AppTextStyles.h2.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SliverPadding for the staggered grid layout
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              sliver: SliverMasonryGrid.count(
                crossAxisCount: 2, 
                mainAxisSpacing: gridSpacing,
                crossAxisSpacing: gridSpacing,
                childCount: galleryImages.length, // Dynamically determine the number of items (based on galleryImages)
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    // scatter art image when clicked leads to scatter_art.dart
                    if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScatterArtPage(),
                        ),
                      );
                    } else {
                      // just open image again since links to no page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(imagePath: galleryImages[index]),
                        ),
                      );
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(gridSpacing),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), 
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5), 
                      child: Image.asset(
                        galleryImages[index], // Dynamic asset loading from the list
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String imagePath;

  const DetailPage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
