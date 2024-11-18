import 'package:flutter/material.dart';
import 'text_styles.dart';

class ExploreAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ExploreAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(200); // Ensure preferred size is implemented correctly

  @override
  _ExploreAppBarState createState() => _ExploreAppBarState();
}

class _ExploreAppBarState extends State<ExploreAppBar> {

  // Track which button is currently pressed
  String _highlightedButton = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      String currentRoute = ModalRoute.of(context)?.settings.name ?? '/';
      setState(() {
        switch (currentRoute) {
          case '/':
            _highlightedButton = 'Art';
            break;
          case '/people':
            _highlightedButton = 'People';
            break;
          case '/clubs':
            _highlightedButton = 'Clubs';
            break;
          case '/tags':
            _highlightedButton = 'Tags';
            break;
        }
      });
    });
  }



  void _onButtonPressed(String button, String route) {
    setState(() {
      _highlightedButton = button;
    });
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      toolbarHeight: 200,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Explore', style: AppTextStyles.h2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TextButton(
                        onPressed: () => _onButtonPressed('Art', '/'),
                            // Navigate to Art page, and change button state
                        style: TextButton.styleFrom(
                          foregroundColor: _highlightedButton == 'Art' ? Colors.black : Colors.grey,
                          textStyle: AppTextStyles.h3,
                          ),
                        child: const Text('Art'),
                        ),
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TextButton(
                       onPressed: () => _onButtonPressed('People', '/people'),
                        style: TextButton.styleFrom(
                          foregroundColor: _highlightedButton == 'People' ? Colors.black : Colors.grey,
                          textStyle: AppTextStyles.h3,
                        ),
                        child: const Text('People'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TextButton(
                        onPressed: () => _onButtonPressed('Clubs', '/clubs'),
                        style: TextButton.styleFrom(
                          foregroundColor: _highlightedButton == 'Clubs' ? Colors.black : Colors.grey,
                          textStyle: AppTextStyles.h3,
                        ),
                        child: const Text('Clubs'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TextButton(
                        onPressed: () => _onButtonPressed('Tags', '/tags'),
                        style: TextButton.styleFrom(
                          foregroundColor: _highlightedButton == 'Tags' ? Colors.black : Colors.grey,
                          textStyle: AppTextStyles.h3,
                        ),
                        child: const Text('Tags'),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [TextFieldSample()],
              ),
      ],
          ),
        ),
      ),
    );
  }
}

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'What are you thinking about?',
        ),
      ),
    );
  }
}


//potenetially changing pages and underline at the same time:
                        // style: TextButton.styleFrom(
                        //   foregroundColor: _highlightedButton == 'Art' ? Colors.black : Colors.grey,
                        //   textStyle: AppTextStyles.h3.copyWith(
                        //     decoration: _highlightedButton == 'Art'
                        //     ? TextDecoration.underline
                        //     : TextDecoration.none,
                        //     decorationThickness: 2,

// // import 'package:flutter/material.dart';
// // import 'text_styles.dart';

// // class ExploreAppBar extends StatefulWidget implements PreferredSizeWidget {
// //   const ExploreAppBar({super.key});

// //   @override
// //   Size get preferredSize => const Size.fromHeight(200); // Ensure preferred size is implemented correctly

// //   @override
// //   _ExploreAppBarState createState() => _ExploreAppBarState();
// // }

// // class _ExploreAppBarState extends State<ExploreAppBar> {
// //   // Track which button is currently pressed
// //   String _highlightedButton = '';

// //   void _onButtonPressed(String button) {
// //     setState(() {
// //       _highlightedButton = button;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return AppBar(
// //       backgroundColor: Colors.white,
// //       centerTitle: true,
// //       toolbarHeight: 200,
// //       flexibleSpace: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.only(top: 20),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: [
// //               const Text('Explore', style: AppTextStyles.h2),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Expanded(
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(vertical: 4.0),
// //                       child: TextButton(
// //                         onPressed: () {
// //                           _onButtonPressed('Art');
// //                           Navigator.pushNamed(context, '/');
// //                         },
// //                         style: TextButton.styleFrom(
// //                           foregroundColor: _highlightedButton == 'Art' ? Colors.blue : Colors.black,
// //                           textStyle: AppTextStyles.h3.copyWith(
// //                             decoration: _highlightedButton == 'Art'
// //                                 ? TextDecoration.underline
// //                                 : TextDecoration.none,
// //                           ),
// //                         ),
// //                         child: const Text('Art'),
// //                       ),
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(vertical: 4.0),
// //                       child: TextButton(
// //                         onPressed: () {
// //                           _onButtonPressed('People');
// //                           Navigator.pushNamed(context, '/people');
// //                         },
// //                         style: TextButton.styleFrom(
// //                           foregroundColor: _highlightedButton == 'People' ? Colors.blue : Colors.black,
// //                           textStyle: AppTextStyles.h3.copyWith(
// //                             decoration: _highlightedButton == 'People'
// //                                 ? TextDecoration.underline
// //                                 : TextDecoration.none,
// //                           ),
// //                         ),
// //                         child: const Text('People'),
// //                       ),
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(vertical: 4.0),
// //                       child: TextButton(
// //                         onPressed: () {
// //                           _onButtonPressed('Clubs');
// //                           Navigator.pushNamed(context, '/clubs');
// //                         },
// //                         style: TextButton.styleFrom(
// //                           foregroundColor: _highlightedButton == 'Clubs' ? Colors.blue : Colors.black,
// //                           textStyle: AppTextStyles.h3.copyWith(
// //                             decoration: _highlightedButton == 'Clubs'
// //                                 ? TextDecoration.underline
// //                                 : TextDecoration.none,
// //                           ),
// //                         ),
// //                         child: const Text('Clubs'),
// //                       ),
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(vertical: 4.0),
// //                       child: TextButton(
// //                         onPressed: () {
// //                           _onButtonPressed('Tags');
// //                           Navigator.pushNamed(context, '/tags');
// //                         },
// //                         style: TextButton.styleFrom(
// //                           foregroundColor: _highlightedButton == 'Tags' ? Colors.blue : Colors.black,
// //                           textStyle: AppTextStyles.h3.copyWith(
// //                             decoration: _highlightedButton == 'Tags'
// //                                 ? TextDecoration.underline
// //                                 : TextDecoration.none,
// //                           ),
// //                         ),
// //                         child: const Text('Tags'),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               const Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [TextFieldSample()],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TextFieldSample extends StatelessWidget {
// //   const TextFieldSample({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const SizedBox(
// //       width: 250,
// //       child: TextField(
// //         decoration: InputDecoration(
// //           border: OutlineInputBorder(),
// //           labelText: 'What are you thinking about?',
// //         ),
// //       ),
// //     );
// //   }
// // }


