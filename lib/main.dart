import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();
  if (!kIsWeb && !Platform.isWindows) await UserService.initialize();
  if (!kIsWeb && !Platform.isWindows) {
    await FirebaseNotification.initialize();
  }

  // BAHASA: DART
  // FRAMEWORK FLUTTER
  // REACT vs FLUTTER
  // Performa Android & IOS, Flutter WIN
  // Performa versi Web, React WIN
  // Kemudahan, Flutter WIN

  //[PENGEN BISA NGODING?]
  // LULUSAN TI S1, masih banyak banget yang gak bisa ngoding
  // - gak harus kuliah
  // - gak harus sekolah
  // - gak harus bootcamp

  // sekolah, ngampus, bootcamp = hanya fasilitas

  // latihan
  // kurangi membaca, perbanyak latihan ngoding

  // ! Ada orang mau bisa main piano,
  // mungkinkah orang itu cukup dengan membaca buku tutorial piano,
  // akan bisa memainkan piano, tanpa sering main piano?

  // ! State management
  /*
  yang gua pake utk Real Project
  setState
  getx
  mobx
  provider

  riverpod
  bloc, cubit

  ! jangan pernah belajar package state management tanpa
  ! belajar setState dulu
  !
  ! Karena basically pacakage state management
  ! mengubah default behaviour dari flutter
  */

  //! FLUTTER VS JAVA

  // ! LINK GRUP FUGI
  // https://tinyurl.com/fugi-community


  // ! LINK BERANDAL COMMUNITY
  // https://tinyurl.com/whatsapp-berandal
  //----------------------------

  //Fullstack
  /*
  - Backend : PHP | JAVA | GOLANG | PYTHON
  - FrontEnd : REACT | VUE | FLUTTER
  PLATFORM: MOBILE, WEB
  */

  // Non Coding
  // UI/UX Designer

  // ExpressJS vs Laravel
  // Kelebihan Python
  // !Python banyak dipakai utk Data Scientist
  // !Python itu gampang banget digunakan
  // !Image processing itu lebih gampang di Python
  // !Bikin bot lebih gampang di Python
  /*
  Produktivitas (Bikin UI) | Flutter WIN
  Performa | Java Win
  Multi PLatform | Flutter WIN
  */

  /*
  ! JUNIOR
  Di daerah
  3-8

  Jakarta
  8-15

  Singapur
  15-25++

  US/UK
  25-45++


  Front End Developer - Flutter

  Fullstack

  */

  // MVC, MVVM, MVP
  // View-Controller dan Model | Service | Util | Widget
  // - Menempatkan sesuatu pada tempat-nya
  // UI, taro di View
  // bikin script HTTP, taro di Service
  // temen2 bikin logic dari view, taro di Controller

  //FRAMEWORK
  // tanpa framework, misalnya nogdingnya itu 100 baris
  // dengan framework, temen2 bisa ngoding dgn cuman 10 baris

  return runApp(MaterialApp(
    title: 'Capek Ngoding',
    navigatorKey: Get.navigatorKey,
    debugShowCheckedModeBanner: false,
    theme: getDarkTheme(),
    home: const DebugView(),
  ));

  runApp(MaterialApp.router(
    title: 'Capek Ngoding',
    debugShowCheckedModeBanner: false,
    routerConfig: getRouters(),
  ));
}
