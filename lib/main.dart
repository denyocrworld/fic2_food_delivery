import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
/*
  Kelas Online /w DenyOcr
  Start: Awal February Gelombang 2
  ? capekngoding.com

  Front End
  - Web
  - Mobile

  ! Basic Pemrograman
  - Variable
  - Operator Aritmatika
  - IF
  - List/Array
  - Map
  - Looping
  - Function
  - OOP

  ! Framework

  Skills
  - 

  Experience
  - Ngerjain real project
  - Freelance
  - Fulltime ngantor
  - Magang
  - Bikin produk sendiri

  Pemain Bola
  Skills
  - Gocek
  - Lari-nya kenceng
  - Nendang-nya kenceng

  Experience
  - Udah pernah ikut piala dunia
  - Udah pernah ikut club di liga professional

  ! Ditampung dulu
  - tutor form validation pake flutter bang


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
          // home: ShakuroDashboardView(),
          // home: LoginView(),
          // home: GegeGeminkDashboardUiView(),
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
