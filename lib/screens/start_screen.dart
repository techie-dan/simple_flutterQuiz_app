import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const textColor = Colors.white;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color:  const Color.fromARGB(255, 166, 169, 183),
            )
          ),
          const SizedBox(
            height: 2,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: textColor,
            ),
            icon: const Icon(Icons.arrow_right_alt), 
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );  
  }
}
