import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answerText;
  
  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child:   ElevatedButton(
        style: ButtonStyle(
        ),
        onPressed: selectAnswer,
        child: Text(answerText),
      ),
    );
  }
}
