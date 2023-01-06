// import 'package:hyper_ui/firebase_options.dart';
import 'package:flutter/material.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  // If you want to enable FirebaseFirestore
  // if (!kIsWeb && !Platform.isWindows) {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // }
}
