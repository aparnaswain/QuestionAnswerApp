import 'package:flutter/material.dart';
import 'package:qus_ans/question_screen.dart';
import 'package:qus_ans/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    // first time build of widget call build ()
    // after all called setState()
    setState(() {
      //activeScreen = const QuestionScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            Colors.white,
            Colors.green,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          // child: activeScreen,
          child: screenWidget,
        ),
      ),
    );
  }
}
