import 'package:flutter/material.dart';
import 'package:quizechallage/quize.dart';

class ResultPage extends StatelessWidget {
  final int correctAnswers;
  final int totalQuestions;
  final int currentIndex;

  const ResultPage({
    Key? key,
    required this.correctAnswers,
    required this.totalQuestions, 
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Quiz Result")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Congratulations!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'You got $correctAnswers out of $totalQuestions correct!',
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyQuize())); 
                
              },
              child: Text('Restart Quiz'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>MyQuize()));
                // Navigator.of(context).pop();
              },
              child: Text('Exit Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
