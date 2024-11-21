//untitled no 207 page
// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:arthub_demo/text_styles.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UntitledArt extends StatelessWidget{
  const UntitledArt({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final verticalSpacing = .01* screenHeight;
    final horizontalPadding = .4*screenWidth;
    final artHeight = .5 * screenWidth;
    final leftPadding = .05*screenWidth;
    final gridSpacing = 0.02 * screenWidth;
    final imageSize = 0.08*screenWidth;

      return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const untitledAppBar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: screenHeight * 0.05),
                Padding(
                  padding: EdgeInsets.only(
                    left: leftPadding,
                  ),
                  child: Text("Untitled no. 207", 
                  style: AppTextStyles.h1
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: leftPadding,
                    top: screenHeight * 0.01,
                    bottom: screenHeight * 0.05,
                  ),
                  child: Text(
                    'August 9th, 1965',
                    style: AppTextStyles.h3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: leftPadding),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'images/index15.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * .15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: leftPadding),
                  child: Row(
                    children: [
                      Container(
                        width: imageSize,
                        height: imageSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey[300]!,
                            width: 1,
                          ),
                          image: const DecorationImage(
                            image: AssetImage('images/index16.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      Expanded(
                        child: Text(
                          'Helen Frankenthawler',
                          style: AppTextStyles.h2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: leftPadding),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenWidth * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Text(
                          'Following',
                          style: AppTextStyles.h3.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}



class untitledAppBar extends StatelessWidget{

  const untitledAppBar({super.key});
  
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final appBarHeight = .15* screenHeight;
    final horizontalPadding = .25*screenWidth;
      return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      pinned: false,
      floating: false,
      snap: false,
      expandedHeight: appBarHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text('Following', style: AppTextStyles.h3.copyWith(decoration: TextDecoration.underline)),
                 Text('Clubs', style: AppTextStyles.h3),
              ],
            ),
          ),
        ),
      ),
    );
  }
 
}