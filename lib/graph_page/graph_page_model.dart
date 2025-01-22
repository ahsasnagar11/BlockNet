import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'graph_page_widget.dart' show GraphPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class GraphPageModel extends FlutterFlowModel<GraphPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for lambda widget.
  double? lambdaValue1;
  // State field(s) for mu widget.
  double? muValue;
  // State field(s) for inpeq widget.
  FocusNode? inpeqFocusNode;
  TextEditingController? inpeqTextController;
  String? Function(BuildContext, String?)? inpeqTextControllerValidator;
  // Stores action output result for [Backend Call - API (derive)] action in Button widget.
  ApiCallResponse? step1api;
  // Stores action output result for [Custom Action - graphgen2] action in Button widget.
  List<double>? yout;
  // Stores action output result for [Backend Call - API (minima)] action in Button widget.
  ApiCallResponse? minimaapi;
  // State field(s) for capacity widget.
  FocusNode? capacityFocusNode;
  TextEditingController? capacityTextController;
  String? Function(BuildContext, String?)? capacityTextControllerValidator;
  // State field(s) for lambda widget.
  double? lambdaValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inpeqFocusNode?.dispose();
    inpeqTextController?.dispose();

    capacityFocusNode?.dispose();
    capacityTextController?.dispose();
  }
}
