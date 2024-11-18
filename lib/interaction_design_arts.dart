//interaction design arts page
import 'package:arthub_demo/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class InteractionDesignArts extends StatelessWidget {
  const InteractionDesignArts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, 'scatter-art'),
          child: const Text('Go to scatter art'),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        )
      );
  }
}