
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qus_ans/data/questions.dart';
import 'package:qus_ans/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
   const ResultsScreen({
    super.key,
    required this.chooseAnswers,
    required this.onRestart,

  });
  
  final void Function() onRestart;
  final List<String> chooseAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'] ;
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' YOU ANSWERED $numCorrectQuestions OUT OF $numTotalQuestions QUESTIONS CORRECTLY!',
                 style: GoogleFonts.lato(
                  color: const Color.fromARGB(250, 230, 290, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                 ),
                ),
                const SizedBox(
                  height: 30,
                ),
                QustionSummary(summaryData),
                const SizedBox(
                  height: 30,
                ),
                TextButton.icon(
                  onPressed: onRestart, 
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Restart Quiz!'),
                )
              ],
            )));
  }
}
