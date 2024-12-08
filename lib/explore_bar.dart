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
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = screenHeight * 0.2;

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
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Image.asset('images/logo.png', height: 20, width: 24),
                const SizedBox(width: 20),
                const Text('Explore', style: AppTextStyles.h2),             
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                          onPressed: () => _onButtonPressed('Art', '/'),
                              // Navigate to Art page, and change button state
                          style: TextButton.styleFrom(
                            foregroundColor: _highlightedButton == 'Art' ? Colors.black : Colors.grey,
                            textStyle: AppTextStyles.h3.copyWith(
                              decoration: _highlightedButton == 'Art'
                              ? TextDecoration.underline
                              : TextDecoration.none,
                              decorationThickness: 2,
                            ),
                            splashFactory: NoSplash.splashFactory,
                            backgroundColor: Colors.transparent,
                            ).copyWith(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                            ),
                          child: const Text('Art'),
                          ),
                    TextButton(
                         onPressed: () => _onButtonPressed('People', '/people'),
                          style: TextButton.styleFrom(
                            foregroundColor: _highlightedButton == 'People' ? Colors.black : Colors.grey,
                            textStyle: AppTextStyles.h3.copyWith(
                              decoration: _highlightedButton == 'People'
                              ? TextDecoration.underline
                              : TextDecoration.none,
                              decorationThickness: 2,
                            ),
                            splashFactory: NoSplash.splashFactory,
                            backgroundColor: Colors.transparent,
                            ).copyWith(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: const Text('People'),
                      ),
                    TextButton(
                          onPressed: () => _onButtonPressed('Clubs', '/clubs'),
                          style: TextButton.styleFrom(
                            foregroundColor: _highlightedButton == 'Clubs' ? Colors.black : Colors.grey,
                            textStyle: AppTextStyles.h3.copyWith(
                              decoration: _highlightedButton == 'Clubs'
                              ? TextDecoration.underline
                              : TextDecoration.none,
                              decorationThickness: 2,
                            ),
                            splashFactory: NoSplash.splashFactory,
                            backgroundColor: Colors.transparent,
                            ).copyWith(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: const Text('Clubs'),
                        ),
                    TextButton(
                          onPressed: () => _onButtonPressed('Tags', '/tags'),
                          style: TextButton.styleFrom(
                            foregroundColor: _highlightedButton == 'Tags' ? Colors.black : Colors.grey,
                            textStyle: AppTextStyles.h3.copyWith(
                              decoration: _highlightedButton == 'Tags'
                              ? TextDecoration.underline
                              : TextDecoration.none,
                              decorationThickness: 2,
                            ),
                            splashFactory: NoSplash.splashFactory,
                            backgroundColor: Colors.transparent,
                            ).copyWith(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: const Text('Tags'),
                        ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 40,
                    ),
                    child: const TextFieldSample(),
                  ),
                ),
              ],
            ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style: AppTextStyles.h3.copyWith(fontSize: 10),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(  // Border when not focused
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          focusedBorder: OutlineInputBorder(  // Border when focused
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          labelText: 'What are you thinking about?',
          labelStyle: AppTextStyles.h3.copyWith(
            color: Colors.grey,
            fontSize: 10),
        ),
      ),
    );
  }
}






