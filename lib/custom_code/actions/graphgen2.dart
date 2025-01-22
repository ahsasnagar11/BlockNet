// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:math_expressions/math_expressions.dart';

Future<List<double>> graphgen2(String? equation) async {
  List<double> y = [];
  double start = 0;
  double end = 100;
  double step = 0.1;
  Parser parser = Parser();
  Expression expr = parser.parse(equation!);
  Variable x = Variable('x');

  for (double i = start; i < end; i += step) {
    ContextModel cm = ContextModel()..bindVariable(x, Number(i));
    double result = expr.evaluate(EvaluationType.REAL, cm);
    y.add(result);
  }
  return y;
}
