import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({
    super.key, 
    required this.chooseAnswers
  });

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++){
      summary.add();
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
            const Text('List of Answer and Questions'),
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