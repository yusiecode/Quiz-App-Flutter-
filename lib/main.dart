import 'package:flutter/material.dart';
import 'quizpage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuestionBank quest = QuestionBank();

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: QuizPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quest.getQuestionAnswer();
    setState(() {
      if (quest.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You have reached end of the Quiz',
        ).show();
        quest.reset();
        scorekeeper = [];
      }
      //else
      if (userPickedAnswer == correctAnswer) {
        scorekeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scorekeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }

      quest.questionNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 7,
          child: Center(
            child: Text(
              quest.getQuestionText(),
              style: const TextStyle(color: Colors.white, fontSize: 25.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text(
              'True',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              checkAnswer(true);
            },
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            child: const Text(
              'False',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              checkAnswer(false);
            },
          ),
        ),
        Row(
          children: scorekeeper,
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
