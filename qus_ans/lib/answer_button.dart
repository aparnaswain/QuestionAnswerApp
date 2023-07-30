import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 19, 109, 121),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        foregroundColor: const Color.fromARGB(255, 252, 253, 248),
      ),
      child: Text(answerText),
    );
  }
}
