import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var questions = [
    {
      "questionText": "what's your favorite color?",
      "answer":["Black", "Red", "Green", "white"],
    },
    {
      "questionText":"what's your pet name?",
      "answer":["Rabbit","snake","Rat","pig"],

    },
    {
      "questionText":"what's your game?",
      "answer":["toy","xbox","PSP","pig"],

    }
  ];

  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      if(_questionIndex < questions.length) {
        _questionIndex = _questionIndex +1;
      }
      else {
        print("no more qustoins");
      }

    });
    print(_questionIndex);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
;
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text(" play color game app"),
        ),
         body:
         _questionIndex < questions.length ?
         Column(
           children: [
             Questions(questions[_questionIndex]["questionText"]as String),
            ...(questions[_questionIndex]["answer"] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            })



           ],
         ) :
         Center( child: Text("Your did it", style: TextStyle( fontWeight: FontWeight.bold),),)
      ),
    );
  }
}
