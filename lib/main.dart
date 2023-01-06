import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/session.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

/*

*/

void main() async {
  await initialize();
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }
  mainStorage = await Hive.openBox('mainStorage');
  await ObsStorage.initializeObsStorage();
  await UserService.load();
  await ThemeService.load();
  await LocalProductService.load();
  await FormHistoryService.load();
  AppSession.token = await mainStorage.get("token") ?? "";

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
          // theme: getGojekTheme(),
          theme: value,
          // home: const FheMainNavigationView(),
          // home: const ExProductListView(),
          // home: const OcDashboardView(),
          home: const OcFormView(),
          // home: const TestView(),
        );
      },
    );
  }
}

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  ValueNotifier<int> counter = ValueNotifier(0);

  increnment() => counter.value++;
  decrenment() => counter.value--;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: counter,
            builder: (context, value, child) {
              return Text(
                "${counter.value}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("Add"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () => increnment(),
          ),
        ],
      ),
    );
  }
}
