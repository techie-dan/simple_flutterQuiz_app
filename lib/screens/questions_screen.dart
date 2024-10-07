import 'package:flutter/material.dart';
import 'package:flutter_tutorial_app/components/answer_button.dart';
import 'package:flutter_tutorial_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen( this.onSelectAnswer, {super.key});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion( String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }
 
  @override
  build(context) {
   
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style:  GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:  const Color.fromARGB(255, 166, 169, 183),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answer, (){
                answerQuestion(answer);
               const  SizedBox(height: 20);
              });
             
            })
          ],
        ),
      ),
    );
  }
}
