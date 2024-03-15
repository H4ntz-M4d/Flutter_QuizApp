import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 250,color: 
          const Color.fromARGB(150, 255, 255, 255),),
          const SizedBox(height: 50,),
          Text('Learn Flutter the fun away', style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          
          const SizedBox(height: 50,),

          OutlinedButton.icon(
            onPressed: startQuiz,
            
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(width: 2, color: Colors.white)
            ),
            icon:const Icon(Icons.article_rounded),
            label: const Text('Start Quiz',)
            ),
        ],
      ),
      );
  }
}