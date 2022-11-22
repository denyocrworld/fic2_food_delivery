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

//basic alert
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
//end basic alert

//softalert
snackbarSoftPrimary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: primaryColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftSecondary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.5),
          border: Border.all(
            width: 1.0,
            color: secondaryColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftDanger({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: dangerColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: dangerColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: dangerColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftSuccess({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: successColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: successColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: successColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftInfo({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: infoColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: infoColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: infoColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSoftWarning({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    elevation: 0,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    content: Container(
      height: 50,
      width: MediaQuery.of(globalContext).size.width,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: warningColor.withOpacity(0.2),
          border: Border.all(
            width: 1.0,
            color: warningColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: warningColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
//endsoft alert