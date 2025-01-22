import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _lambdaa = prefs.getDouble('ff_lambdaa') ?? _lambdaa;
    });
    _safeInit(() {
      _muu = prefs.getDouble('ff_muu') ?? _muu;
    });
    _safeInit(() {
      _graphData =
          prefs.getStringList('ff_graphData')?.map(double.parse).toList() ??
              _graphData;
    });
    _safeInit(() {
      _graphdata2 =
          prefs.getStringList('ff_graphdata2')?.map(double.parse).toList() ??
              _graphdata2;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _lambdaa = 5.0;
  double get lambdaa => _lambdaa;
  set lambdaa(double value) {
    _lambdaa = value;
    prefs.setDouble('ff_lambdaa', value);
  }

  double _muu = 3.0;
  double get muu => _muu;
  set muu(double value) {
    _muu = value;
    prefs.setDouble('ff_muu', value);
  }

  List<double> _graphData = [];
  List<double> get graphData => _graphData;
  set graphData(List<double> value) {
    _graphData = value;
    prefs.setStringList(
        'ff_graphData', value.map((x) => x.toString()).toList());
  }

  void addToGraphData(double value) {
    graphData.add(value);
    prefs.setStringList(
        'ff_graphData', _graphData.map((x) => x.toString()).toList());
  }

  void removeFromGraphData(double value) {
    graphData.remove(value);
    prefs.setStringList(
        'ff_graphData', _graphData.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromGraphData(int index) {
    graphData.removeAt(index);
    prefs.setStringList(
        'ff_graphData', _graphData.map((x) => x.toString()).toList());
  }

  void updateGraphDataAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    graphData[index] = updateFn(_graphData[index]);
    prefs.setStringList(
        'ff_graphData', _graphData.map((x) => x.toString()).toList());
  }

  void insertAtIndexInGraphData(int index, double value) {
    graphData.insert(index, value);
    prefs.setStringList(
        'ff_graphData', _graphData.map((x) => x.toString()).toList());
  }

  double _fx = 0.0;
  double get fx => _fx;
  set fx(double value) {
    _fx = value;
  }

  List<double> _graphdata2 = [];
  List<double> get graphdata2 => _graphdata2;
  set graphdata2(List<double> value) {
    _graphdata2 = value;
    prefs.setStringList(
        'ff_graphdata2', value.map((x) => x.toString()).toList());
  }

  void addToGraphdata2(double value) {
    graphdata2.add(value);
    prefs.setStringList(
        'ff_graphdata2', _graphdata2.map((x) => x.toString()).toList());
  }

  void removeFromGraphdata2(double value) {
    graphdata2.remove(value);
    prefs.setStringList(
        'ff_graphdata2', _graphdata2.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromGraphdata2(int index) {
    graphdata2.removeAt(index);
    prefs.setStringList(
        'ff_graphdata2', _graphdata2.map((x) => x.toString()).toList());
  }

  void updateGraphdata2AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    graphdata2[index] = updateFn(_graphdata2[index]);
    prefs.setStringList(
        'ff_graphdata2', _graphdata2.map((x) => x.toString()).toList());
  }

  void insertAtIndexInGraphdata2(int index, double value) {
    graphdata2.insert(index, value);
    prefs.setStringList(
        'ff_graphdata2', _graphdata2.map((x) => x.toString()).toList());
  }

  double _alpha = 1000000000.0;
  double get alpha => _alpha;
  set alpha(double value) {
    _alpha = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
