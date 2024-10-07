import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton  extends StatelessWidget{
const  AnswerButton(this.answerText, this.onTap, {super.key});
final String answerText;
final void Function() onTap;
   @override
  Widget build(context) {
   return  ElevatedButton(onPressed: onTap, 
   style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    backgroundColor: const Color.fromARGB(255, 16, 26, 58),
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40)
    ),
   ),
   child: Text(answerText, textAlign: TextAlign.center,
   style: GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
   ),
   maxLines: 1,
   
   ),
   );
  }
}