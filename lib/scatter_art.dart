//scatter art page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ScatterArtPage extends StatelessWidget {
  const ScatterArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back to interaction design arts'),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}