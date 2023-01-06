import 'package:hyper_ui/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'service/main_storage/main_storage.dart';

void main() async {
  await initialize();
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);

    if (!kIsWeb) {
      var path = await getTemporaryDirectory();
      Hive.init(path.path);
    }
    mainStorage = await Hive.openBox('mainStorage');
  }

  Get.mainTheme.value = getDefaultTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const CgMainView(),
          // home: const ExProductListView(),
          // home: const OcDashboardView(),
          // home: const TestView(),
        );
      },
    );
  }
}
