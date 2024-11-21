import 'package:arthub_demo/clubspage.dart';
import 'package:arthub_demo/explore_art.dart';
import 'package:arthub_demo/interaction_design_arts.dart';
import 'package:arthub_demo/scatter_art.dart';
import 'package:flutter/material.dart';
import 'package:arthub_demo/people.dart';
import 'package:arthub_demo/tags.dart';
import 'untitled_no_207.dart';



void main() {
  runApp(const ArthubApp());
}

class ArthubApp extends StatelessWidget {
  const ArthubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'untitledart',
      routes: {
        'untitledart': (context) => const UntitledArt(),
        '/': (context) => const ExploreArtPage(),
        '/clubs': (context) => const Clubspage(),
        '/interaction-design-arts': (context) => const InteractionDesignArts(),
        '/scatter-art': (context) => const ScatterArtPage(),
        '/people': (context) => const Explorepeoplepage(),
        '/tags': (context) => const Exploretagspage(),
      },
    );
  }
}
