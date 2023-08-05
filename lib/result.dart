import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() q;

  Result(this.q, this.resultScore);

  String get  resultPhrase{

    String resultText;

    if (resultScore >= 70) {
      resultText = "You are awesome !";
    } else if (resultScore >= 40){
      resultText = "Pretty likable !";
    } else {
      resultText = "You are so bad ! ";
    }

    return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Done !",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            "Your Score is $resultScore",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: q,
              child: Text(
                "Restart The App",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
