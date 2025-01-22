// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_math_fork/flutter_math.dart';

class ForkEQ extends StatefulWidget {
  const ForkEQ({
    super.key,
    this.width,
    this.height,
    this.latexCode,
  });

  final double? width;
  final double? height;
  final String? latexCode;

  @override
  State<ForkEQ> createState() => _ForkEQState();
}

class _ForkEQState extends State<ForkEQ> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Latex Code Passed: ${widget.latexCode}");
    // Check if LaTeX code is provided
    if (widget.latexCode == null || widget.latexCode!.isEmpty) {
      return const Center(
        child: Text(
          "No LaTeX code provided",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    }
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 150,
      padding: const EdgeInsets.all(8.0),
      child: Center(
        // Center the content within the container
        child: Math.tex(
          widget.latexCode!, // Render the LaTeX code dynamically
          textStyle: const TextStyle(fontSize: 18), // Customize font size
          onErrorFallback: (error) => const Text(
            'Error rendering equation',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
