import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({
    super.key
    , required this.onSelectedAnswer
  });
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen>{
  var currentQuestionsIndex = 0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectedAnswer(selectedAnswers);
    setState(() {
      currentQuestionsIndex++;
      
    });
  }

  @override
  Widget build(context){
  final currentQuestions = questions[currentQuestionsIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        
          Text(
            currentQuestions.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30,),
        
          ...currentQuestions.getShuffleAnswers().map((answer) {
            return AnswerButton(
              answerText: answer, 
              onPress: (){
                answerQuestion(answer);
              });
          }),
          ],
        ),
      ),
    );

  }
}