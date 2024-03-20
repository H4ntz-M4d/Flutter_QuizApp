import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-Screen';
  List<String> selectedAnswers = [];

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void chooseAnswers(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {

    // final screenWidget = activeScreen == 'start-Screen'
    //         ? StartScreen(switchScreen)
    //         : const QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswers,);
    }

    if (activeScreen == 'results-screen'){
      screenWidget = ResultScreen(
        chooseAnswers: selectedAnswers,
        onRestart: restartQuiz,  
      );
    }

    return MaterialApp(
      home: (Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 64, 0, 109),
          Color.fromARGB(255, 166, 0, 255),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: screenWidget,
      ))),
    );
  }
}
