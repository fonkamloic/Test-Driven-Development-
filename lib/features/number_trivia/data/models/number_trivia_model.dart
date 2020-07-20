import 'package:flutter/material.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivial.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({@required String text, @required int number})
      : super(text: text, number: number);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json['text'],
      number: (json['number'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {"text": text, "number": number};
  }
}

// {
//     "text": "1e+40 is the Eddington-Dirac number.",
//     "number": 1e40,
//     "found": true,
//     "type": "trivia"
// }
