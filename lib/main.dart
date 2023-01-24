import 'package:hyper_ui/state_util.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*
Front End
- Membuat UI
- Consume API

---
(Optional)
- Testing
- Deploy
- Paham Architecture

------------

1. Latihan Membuat UI
Login
SignUp
Dashboard
Profile
EditProfile
ListView
DetailView

Skill

Experience
POS
*/
void main() async {
  await initialize();

  // await FirebaseFirestore.instance.collection("products").get();

  Get.mainTheme.value = getDefaultTheme();
  Get.mainTheme.value = getDarkTheme();
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
          // home: ContohView(),
          // home: TutorialView(),
          builder: (context, child) {
            if (child == null) {
              return Container();
            }

            //Alt+Shift+Enter
            //Ctrl+S
            return Material(
              child: Stack(
                children: [
                  child,
                  Positioned(
                    right: 36,
                    bottom: 10,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
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
