import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  
/*you can also to make code in the top to this
  // const AnswerButton(this.answerText, this.onPress, {super.key});
*/
  const AnswerButton({
    super.key, 
    required this.answerText, 
    required this.onPress
    });

  final String answerText;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: onPress, 
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
            backgroundColor: const Color.fromARGB(255, 57, 0, 101),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          ),
          child: Text(answerText, textAlign: TextAlign.center,),
          );
  }
}