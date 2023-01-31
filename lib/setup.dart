import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
/*
TODO: 
Run this command if you don't already have firebase_options.dart
flutterfire configure
Docs: https://firebase.flutter.dev/docs/cli/
*/

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb || Platform.isWindows) return;

  // await Firebase.initializeApp(
  //   //run > flutterfire configure
  //   //and import DefaultFirebaseOptions!
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await FirebaseAuth.instance.wait();
}

extension FirebaseAuthExtension on FirebaseAuth {
  wait() async {
    bool ready = false;
    FirebaseAuth.instance.authStateChanges().listen((event) {
      ready = true;
    });

    while (ready == false) {
      await Future.delayed(const Duration(milliseconds: 250));
    }
  }
}
