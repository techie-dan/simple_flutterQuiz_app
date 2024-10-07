import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context){
    return  SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
         
          children: summaryData.map((summary) {
            return  Row( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(12),   // Padding inside 
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: summary['user_answer'] == summary['correct_answer'] ? const Color.fromARGB(180, 121, 246, 209) : const Color.fromARGB(180,204,0,200),
                ),
                 child: Text(((summary['question_index'] as int) + 1).toString(),
                   style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,

                   ),
              )
              
              ),
              const SizedBox(width: 30,),
              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                
                children:  [ 
                  Text(summary['question'] as String,
                  style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(200, 255, 255, 255)
              ),
              
                  ),
                 const SizedBox(
                  height: 5
                 ),
                 
                   Text(summary['user_answer'] as String,
                   
                   style: GoogleFonts.poppins(
                     color: const Color.fromARGB(255, 204, 0, 201),
                     fontSize: 12,
                     fontWeight: FontWeight.w500,
                   ),
                  
                   ),
                 
                 Text(summary['correct_answer'] as String,
                 style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: const Color.fromARGB(255, 121, 246, 209)


                 ),
                 textAlign: TextAlign.left
                 ),
                const SizedBox(height: 20,)
                ],
              )
               )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}