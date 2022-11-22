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

snackbarPrimary(String message) {
  var snackBar = SnackBar(
    backgroundColor: primaryColor,
    content: Text(
      message,
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSecondary(String message) {
  var snackBar = SnackBar(
    backgroundColor: secondaryColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarDanger(String message) {
  var snackBar = SnackBar(
    backgroundColor: dangerColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSuccess(String message) {
  var snackBar = SnackBar(
    backgroundColor: successColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarInfo(String message) {
  var snackBar = SnackBar(
    backgroundColor: infoColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarWarning(String message) {
  var snackBar = SnackBar(
    backgroundColor: warningColor,
    content: Text(message),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
