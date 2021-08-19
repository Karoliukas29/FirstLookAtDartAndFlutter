import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // First way how to style Elevated button style
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,

          //Second way to style Elevated Button style
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.blue),
          //     foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
