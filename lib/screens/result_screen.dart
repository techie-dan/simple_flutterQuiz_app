import 'package:flutter/material.dart';
import 'package:flutter_tutorial_app/data/questions.dart';
import 'package:flutter_tutorial_app/data/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.choosenAnswers, this.onTap, {super.key});
  final List<String> choosenAnswers;
  final void Function() onTap;
 
  List <Map<String, Object>>getSummaryData(){
    // Maps the list of infomation needed for the Result Screen
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++){
      summary.add({
          'question_index': i,
          'question': questions[i].text,
          'correct_answer':questions[i].answers[0],
          'user_answer': choosenAnswers[i]
      },
      );
    }
    return summary;
  }
  @override
  Widget build(context){
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    
    final  numCorrectQuestions = summaryData.where((data){ // Filters summary data to check if user answer is correct.
      return data['user_answer'] == data['correct_answer'];
    }).length ;
   return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color:const Color.fromARGB(150, 198, 200, 208),
            fontWeight: FontWeight.bold,
            
          ),
         
          ),
          const SizedBox(height: 30,),
          QuestionsSummary(getSummaryData()),
          const SizedBox(height: 50,),
 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            TextButton.icon(onPressed: onTap, label:  Text("Restart Quiz",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
            ),
            
            ),
            icon: const Icon(Icons.restart_alt, color: Colors.white,),
            ),
            
           
           ],
          )
           


          ],
        )
      )
      );
  }
}