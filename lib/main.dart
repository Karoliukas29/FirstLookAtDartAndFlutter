import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Which of the following option leads to the portability and security of Java?',
      'answers': [
        {'text': 'Bytecode is executed by JVM', 'score': 10},
        {
          'text': 'The applet makes the Java code secure and portable',
          'score': 0
        },
        {'text': 'Use of exception handling', 'score': 0},
        {'text': 'Dynamic binding between objects', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of the following is not a Java features?',
      'answers': [
        {'text': 'Dynamic', 'score': 0},
        {'text': 'Architecture Neutral', 'score': 0},
        {'text': 'Use of pointers', 'score': 10},
        {'text': 'Object-oriented', 'score': 0},
      ],
    },
    {
      'questionText':
          '_____ is used to find and fix bugs in the Java programs.',
      'answers': [
        {'text': 'JVM', 'score': 0},
        {'text': 'JRE', 'score': 0},
        {'text': 'JDK', 'score': 0},
        {'text': 'JDB', 'score': 10},
      ],
    },
    {
      'questionText':
          'What is the return type of the hashCode() method in the Object class?',
      'answers': [
        {'text': 'Object', 'score': 0},
        {'text': 'int', 'score': 10},
        {'text': 'long', 'score': 0},
        {'text': 'void', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following for loop declaration is not valid?',
      'answers': [
        {'text': 'for ( int i = 99; i >= 0; i / 9)', 'score': 10},
        {'text': 'for ( int i = 7; i <= 77; i += 7 )', 'score': 0},
        {'text': 'for ( int i = 20; i >= 2; - -i )', 'score': 0},
        {'text': 'for ( int i = 2; i <= 20; i = 2* i )', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following is true about the anonymous inner class?',
      'answers': [
        {'text': 'It has only methods', 'score': 0},
        {'text': 'Objects can\'t be created', 'score': 0},
        {'text': 'It has a fixed class name', 'score': 0},
        {'text': 'It has no class name', 'score': 10},
      ],
    },
    {
      'questionText': 'What do you mean by nameless objects?',
      'answers': [
        {'text': 'An object created by using the new keyword.', 'score': 0},
        {
          'text': 'An object of a superclass created in the subclass.',
          'score': 0
        },
        {
          'text': 'An object without having any name but having a reference.',
          'score': 0
        },
        {'text': 'An object that has no reference.', 'score': 10},
      ],
    },
    {
      'questionText':
          ' An interface with no fields or methods is known as a ______',
      'answers': [
        {'text': 'Runnable Interface', 'score': 0},
        {'text': 'Marker Interface', 'score': 10},
        {'text': 'Abstract Interface', 'score': 0},
        {'text': 'CharSequence Interface', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which keyword is used for accessing the features of a package?',
      'answers': [
        {'text': 'package', 'score': 0},
        {'text': 'import', 'score': 10},
        {'text': 'extends', 'score': 0},
        {'text': 'export', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following is a valid syntax to synchronize the HashMap?',
      'answers': [
        {'text': 'Map m = hashMap.synchronizeMap();', 'score': 0},
        {'text': 'Map m1 = Collections.synchronizedMap(hashMap);', 'score': 10},
        {'text': 'HashMap map =hashMap.synchronizeMap();', 'score': 0},
        {'text': 'Map m2 = Collection.synchronizeMap(hashMap);', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
