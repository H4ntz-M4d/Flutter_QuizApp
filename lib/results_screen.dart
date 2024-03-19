import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({
    super.key, 
    required this.chooseAnswers
  });

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++){
      summary.add({
        'question_index':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer':chooseAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You Answer X out Y questions correctly!'),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}