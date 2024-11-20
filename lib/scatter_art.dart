//scatter art page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'second_explore_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'text_styles.dart';

class ScatterArtPage extends StatelessWidget {
  const ScatterArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    

    final contentFlex = (screenWidth / 100).round();
    final textSectionFlex = contentFlex * 3;
    final spacerFlex = contentFlex;
    final horizontalGap = screenWidth * 0.02;
    final leftPadding = screenWidth * 0.045;
    final scatterArtHeight = screenHeight * 0.45;
    final horizontalPadding = screenWidth * 0.05;
    final verticalSpacing = screenHeight * 0.02;
    final gridSpacing = screenWidth * 0.01;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SecondExploreBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: verticalSpacing*.5),
                  const Center(
                    child: Text(
                      'Would You Scatter Your Words Among The Stars',
                      style: AppTextStyles.h1,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      'June 30th, 2024',
                      style: AppTextStyles.h2.copyWith(
                        color: Colors.grey,
                        fontSize: 10
                      )),
                  ),
                  SizedBox(height: verticalSpacing * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shao Xuan',
                        style: AppTextStyles.h2,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          //const box size unless ugly on iOS
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text('Follow', style: AppTextStyles.h3),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalSpacing),
                  Image.asset(
                    'images/index12.png',
                    width: double.infinity,
                    height: scatterArtHeight,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: verticalSpacing),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 30,
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.045),
                          child: Text(
                            'About',
                            style: AppTextStyles.h2,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth*0.02),
                      Expanded(
                        flex: 70,
                        child: Text(
                          'This project is a collaborative effort among four friends to create a space where people anonymously share messages they have for people who are no longer in their lives. This is a mixed-media immersive installation, consisting of  creative coding and software like Arduino and Touchdesigner.',
                          style: AppTextStyles.h3.copyWith(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalSpacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth*0.045),
                          child: const Text('Medium ', style: AppTextStyles.h3),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: const Text('Club ', style: AppTextStyles.h3),
                      ),
                      Expanded(
                        flex: 2,
                        child: const Text('Location', style: AppTextStyles.h3),
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                  SizedBox(height: verticalSpacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: textSectionFlex,
                        child: Padding(
                          padding: EdgeInsets.only(left: leftPadding),
                          child:  Text('Arduino, TouchDesigner', style: AppTextStyles.h3.copyWith(fontSize: 10, color: Colors.grey)),
                        ),
                      ),
                      SizedBox(width: horizontalGap),
                      Expanded(
                        flex: textSectionFlex,
                        child:  Text('Interaction Design Arts', style: AppTextStyles.h3.copyWith(fontSize: 10, color: Colors.grey)),
                      ),
                      SizedBox(width: horizontalGap),
                      Expanded(
                        flex: textSectionFlex,
                        child:  Text('London, UK', style: AppTextStyles.h3.copyWith(fontSize: 10, color: Colors.grey)),
                      ),
                      Expanded(
                        flex: spacerFlex,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalSpacing),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                  SizedBox(height: verticalSpacing),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth*0.045),
                    child: Text(
                      'More by Shao Xuan',
                      style: AppTextStyles.h1,
                    ),
                  ),
                  SizedBox(height: verticalSpacing),
                ],
              ),
            ),
        ),
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
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
