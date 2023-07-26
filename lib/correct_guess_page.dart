import 'package:flutter/material.dart';

class CorrectGuessPage extends StatelessWidget {
  final int correctNumber;

  const CorrectGuessPage({super.key, required this.correctNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guess game!')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Congratulations! You\'ve guessed it correctly.'),
            Text('The correct number is: $correctNumber'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the home screen
              },
              child: const Text('Play Again'),
            ),
          ],
        ),
      ),
    );
  }
}