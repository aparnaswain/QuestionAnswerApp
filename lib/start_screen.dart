import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/india.png',
            width: 300,
            // color: const Color.fromARGB(44, 173, 173, 160),
          ),
          // Opacity(
          //  opacity: 0.7,
          //  child: Image.asset(
          //  'assets/images/india.png',
          //   width: 300,
          //),
          //),
          const SizedBox(height: 80),
          const Text(
            'WELCOME TO MY INDIA QUIZ APP',
            style: TextStyle(
              color: Color.fromARGB(255, 246, 247, 248),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),

          OutlinedButton.icon(
            onPressed: startQuiz,
            // style: OutlinedButton.styleFrom(
            //   foregroundColor: Colors.white,
            // ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
