//clubs page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:arthub_demo/explore_bar.dart';
import 'text_styles.dart';



class Clubspage extends StatelessWidget {
  const Clubspage({super.key});

  //club names and descriptions
  final List<Map<String, String>> clubs = const [
    {'title': 'Philadelphia Arts', 'subtitle': '212 members'},
    {'title': 'Interaction Design Arts', 'subtitle': '82 members'},
    {'title': 'Claremont Photography Club', 'subtitle': '25 members'},
    {'title': 'Abstract Expressionists Who Care About the Earth', 'subtitle': '19 members'},
  ];
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const ExploreAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ClubCard(
                imagePath: 'images/index${index+5}.png',
                title: clubs[index]['title']!,
                subtitle: clubs[index]['subtitle']!,
              ),
              childCount: clubs.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class ClubCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const ClubCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title == 'Interaction Design Arts')  // Check if this is the IDA card
            Material(
              color: Colors.transparent,
              child: InkWell(
              onTap: () => Navigator.pushNamed(context, '/interaction-design-arts'),
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      imagePath,
                      width: double.infinity,
                      height: 151,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: AppTextStyles.h2,
                  ),
                ],
              ),
            ))
          else  // For all other cards
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    height: 151,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: AppTextStyles.h2,
                ),
              ],
            ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: AppTextStyles.h3,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}


