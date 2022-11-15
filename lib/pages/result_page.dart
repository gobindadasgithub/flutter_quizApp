import 'package:flutter/material.dart';

import '../temp_db.dart';
import 'home_pages.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = getResult;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Correct: ${result.correct}'),
            Text('Incorrect: ${result.incorrect}'),
            TextButton(
              onPressed: () {
                quizList = [];
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Start Over'),
            ),
          ],
        ),
      ),
    );
  }
}