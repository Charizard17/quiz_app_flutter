import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 14) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are a bit strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            child: Text('Restart Quiz!'),
            style: OutlinedButton.styleFrom(
                primary: Colors.orange[700],
                side: BorderSide(
                  color: Colors.lightGreen,
                  width: 3,
                )),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
