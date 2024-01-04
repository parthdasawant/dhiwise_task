import 'package:flutter/material.dart';

class SomethingWentWrongScreen extends StatelessWidget {
  const SomethingWentWrongScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Visually engaging error icon
            Icon(
              Icons.error_outline,
              size: 100,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 20),
            // Clear and informative error message
            Text(
              'Something went wrong.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            // Optional: Additional details or instructions
            Text(
              'Please try again or contact support if the issue persists.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 30),
            // Action button for retry or navigation
            ElevatedButton(
              onPressed: () {
                // Handle retry or navigation logic here
              },
              child: const Text('Try Again'),
            )
          ],
        ),
      ),
    );
  }
}
