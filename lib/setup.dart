// import 'package:hyper_ui/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hyper_ui/_/service/service_example.dart';
import 'package:path_provider/path_provider.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initLocalStorage();
  await _initFirebase();
}

_initLocalStorage() async {
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);

    if (!kIsWeb) {
      var path = await getTemporaryDirectory();
      Hive.init(path.path);
    }
    mainStorage = await Hive.openBox('mainStorage');
  }
}

_initFirebase() async {
  // If you want to enable FirebaseFirestore
  // if (!kIsWeb && !Platform.isWindows) {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // }
}
