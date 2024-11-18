import 'package:arthub_demo/clubspage.dart';
import 'package:arthub_demo/explore_art.dart';
import 'package:arthub_demo/interaction_design_arts.dart';
import 'package:arthub_demo/scatter_art.dart';
import 'package:flutter/material.dart';
import 'package:arthub_demo/people.dart';
import 'package:arthub_demo/tags.dart';



void main() {
  runApp(const ArthubApp());
}

class ArthubApp extends StatelessWidget {
  const ArthubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
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







// class ExploreArtPage extends StatefulWidget {
//   const ExploreArtPage({super.key});
//   int _currentIndex = 0;

  
//   final List<Widget> _tabs = 
//   [ExploreClubsPage(),
//   ExplorePeoplePage(),
//   ExploreTagsPage()];

// @override

// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         useMaterial3: true,
//         bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//           backgroundColor: Colors.pink, 
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.pink,
//           )
//         ),
//       home:  ExploreArtPage(), Clubspage()
//       routes: {
//         '/f': (contect)  => FirstPage(),
//         '/firstpage': (contect)  => FirstPage(),
//         //const BottomNavBar(),
//       },
//       );
//   }
// }
// }