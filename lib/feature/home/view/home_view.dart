import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to the cart page
              },
              child: const Text('Go to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}