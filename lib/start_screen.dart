import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/Apple_logo_black.png',
            width: 300,
            color: const Color.fromARGB(159, 242, 240, 240),
          ),

          SizedBox(height: 80),
          Text(
            'Quiz_app',
            style: GoogleFonts.mochiyPopOne(
              color: const Color.fromARGB(255, 231, 231, 231),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 80),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('start'),
          ),
        ],
      ),
    );
  }
}
