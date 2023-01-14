import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*
! LINK KOMUNITAS
? https://capekngoding.com/join

! Link Kelas Online
? https://capekngoding.com
*/

void main() async {
  await initialize();
  Get.mainTheme.value = getDefaultTheme();
  // Get.mainTheme.value = getDarkTheme();
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
          // home: const ContohView(),
          // home: const TutorialView(),
          builder: (context, child) {
            if (child == null) {
              return Container();
            }
            return Material(
              child: Stack(
                children: [
                  child,
                  const Positioned(
                    right: 10,
                    bottom: 10,
                    child: ThemeChangerIcon(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
