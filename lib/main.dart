import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

/*
! LINK KOMUNITAS
? https://capekngoding.com/join
! Link Kelas Online
? https://capekngoding.com


Bahasa: DART
Framework: Flutter

Basic Pemrograman
- Variable
- Operator Aritmatika
- IF
- List
- Map
- Looping
- Function
-------------------------

Junior Programmer
- Basic Pemrograman
- OOP

> Portofolio

Front End
- Bikin UI
- Consume API

Trik-nya gini, kalo lo ga punya portofolio:
- Bikin 5 UI Aplikasi Populer | per Aplikasi 3-5 Halaman aja
(Tokopedia, Shopee, Tiktok, Noice, Spotify, Netflix)
- Bikin 5 UI dari dribbble, cari desain terbaik
10 Portofolio - Mengesankan

Buat 2-3 Aplikasi yang terintegrasi dengan API
(Pake API Public)
(Weather API, Movie API, dsb..)

Belajar berfikir simple
Jangan terlallu over thingking
Kurangi membaca, banyakin latihan

---
Mungkin gan, lo bisa main gitar
Tapi cuman baca buku gitar doang~
Bahkan kalo lo hafal smua isi buka gitar,
Belum tentu bisa main gitar.
---
lo hafalan bagus, hafal smua isi buku koding
Tapi jarang ngoding
Tetep lo ga lancar ngoding-nya.
---

Skill
- Basic Pemrograman
- OOP
- Framework 
- Bikin Portofolio
Experience
- Magang
- Kerja Full time
- Freelance
- Bikin produk sendiri

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
