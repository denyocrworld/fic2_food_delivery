import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:example/service/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
/*
TODO: 
Run this command if you don't already have firebase_options.dart
flutterfire configure
Docs: https://firebase.flutter.dev/docs/cli/
*/
import 'firebase_options.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //   apiKey: 'AIzaSyDBlw7fwK5WNE3Apios4kL6WIDznCkEHaA',
  //   appId: '1:845116064246:web:90a43f50a18b54e9d447d7',
  //   messagingSenderId: '845116064246',
  //   projectId: 'capekngoding-website',
  // ));
  if (!kIsWeb && Platform.isWindows) return;

  await Firebase.initializeApp(
    //run > flutterfire configure
    //and import DefaultFirebaseOptions!
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.wait();
  // await deleteAll("users");
  // await deleteAll("booking_list");
  // await deleteAll("parking_list");
  UserService.initialize();
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

deleteAll(collectionName) async {
  var snapshot =
      await FirebaseFirestore.instance.collection(collectionName).get();
  for (var i = 0; i < snapshot.docs.length; i++) {
    await FirebaseFirestore.instance
        .collection(collectionName)
        .doc(snapshot.docs[i].id)
        .delete();
  }
}
