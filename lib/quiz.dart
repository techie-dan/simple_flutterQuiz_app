import 'package:flutter/material.dart';
import 'package:flutter_tutorial_app/data/questions.dart';
import 'package:flutter_tutorial_app/screens/result_screen.dart';
import 'package:flutter_tutorial_app/screens/start_screen.dart';
import 'package:flutter_tutorial_app/screens/questions_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
    @override
  State<Quiz> createState() {
    return _QuizState();
  }
}



class _QuizState extends  State<Quiz>{
 var activeScreen = 'start-screen';



 List<String> selectedAnswers = [];
  void switchScreen(){
    setState((){
     activeScreen = 'question-screen';
    });
  }
  
 void restartQuiz(){
  setState(() {
    activeScreen = 'question-screen';
    selectedAnswers = [];
  });
 } 
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }
 @override
  Widget build(context) {
    
    Widget? screenWidget;

    switch (activeScreen) { // Switch screen from Start Screen to Result Screen.
      
      case 'question-screen':
        screenWidget =  QuestionScreen(chooseAnswer);
        break;
      case 'result-screen':
        screenWidget =  ResultScreen(selectedAnswers, restartQuiz );
      default:
       screenWidget = StartScreen(switchScreen);
    }
   return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            
            gradient: LinearGradient(
              
              colors: [
             
              Color.fromARGB(255, 63, 76, 119),
               Color.fromARGB(255, 17, 20, 30),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
          ),
          child: screenWidget
        )
      ),
    );
  }
}