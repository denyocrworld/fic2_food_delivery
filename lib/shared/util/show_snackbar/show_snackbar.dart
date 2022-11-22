import 'package:example/core.dart';
import 'package:flutter/material.dart';

// var bgColor = const Color(0xFF212332);
// var defaultPadding = 16.0;

// var primaryColor = Colors.blueGrey[800]!;
// var secondaryColor = const Color(0xFF2A2D3E);
// var dangerColor = Colors.red[300]!;
// var successColor = Colors.green[300]!;
// var infoColor = Colors.blue[300]!;
// var warningColor = Colors.orange[300]!;

// var disabledColor = Colors.grey[300]!;
// var disabledTextColor = Colors.grey[800];

snackbarPrimary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: primaryColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSecondary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: secondaryColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarDanger({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: dangerColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSuccess({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: successColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarInfo({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: infoColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarWarning({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: warningColor,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
