import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 100) {
      resultText = 'Your grade is: ' +
          resultScore.toString() +
          ' Wow you made no mistakes, good job!';
    } else if (resultScore >= 70) {
      resultText = 'Your grade is: ' +
          resultScore.toString() +
          ' Not too bad, keep going!';
    } else if (resultScore >= 40) {
      resultText = 'Your grade is: ' +
          resultScore.toString() +
          ' I know you could do better!!!';
    } else {
      resultText = 'Your grade is: ' +
          resultScore.toString() +
          ' Sorry you failed, don\'t give up keep going!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: TextButton.styleFrom(primary: Colors.blue),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
