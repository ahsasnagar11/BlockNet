import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<double>? graphGen(
  double? lmb,
  double? mu,
) {
  List<double> y = [];
  lmb = lmb ?? 0;
  mu = mu ?? 1;
  if (mu == 0) mu = 1e9;
  double start = 0;
  double end = 15;
  double step = 0.1;
  for (double i = start; i < end; i += step) {
    //y.add((lmb / mu) * (1 - math.exp(-mu * i)));
    y.add((lmb / mu) * (1 - math.exp(-mu * i)));
  }
  return y;
}

List<double>? xAxis() {
  List<double> x = [];
  for (double i = 0; i < 15; i += 0.1) {
    x.add(i);
  }
  return x;
}

List<double>? graphgen22() {
  List<double> y = [];
  double start = 0;
  double end = 100;
  double step = 0.1;

  for (double i = start; i < end; i += step) {
    y.add(1);
  }
  return y;
}

List<double>? xAxis2() {
  List<double> x = [];
  for (double i = 0; i < 100; i += 0.1) {
    x.add(i);
  }
  return x;
}
