import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*
Kelas Online /w DenyOcr - Gelombang 2 (6 February)
Mau join?
? Buka capekngoding.com
*/

/*
Gaji Junior Programmer yang Realistis


*/

void main() async {
  await initialize();

  // await FirebaseFirestore.instance.collection("products").get();

  // Get.mainTheme.value = getDefaultTheme();
  Get.mainTheme.value = getDarkTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

//Buatlah sebuah function untuk
//Alt+SHift+Enter

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var response = Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

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
