import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class TutorialDashboardView extends StatefulWidget {
  const TutorialDashboardView({Key? key}) : super(key: key);

  Widget build(context, TutorialDashboardController controller) {
    controller.view = this;

    /*
    Kelas Online Flutter: (Gelombang II)
    ? Buka aja
    ! capekngoding.com
    Kelas-nya start MALAM INI!
    ---

    Basic Pemrograman
    - Variable
    - Operator Aritmatika
    - IF Statement
    - List/Array
    - Map
    - Looping
    - Function & Async Function
    - OOP

    Rumah 
    - Arsitek (Architecture)
    - Tukang (Programmer)
    - Alat (Palu, Tang, Paku, dsb) | (Getx, Provider, Riverpod)

    State Management
    - BLoC
    - Cubit
    - Getx
    - Provider
    - Riverpod
    - setState

    Architecture
    - MVC
    - MVVM
    - Clean Architecture

    Materi: Basic Flutter
    Common Widget
      - Scaffold
      - AppBar
      - BottomNavigationBar
      - Container
      - Text
      - Image
      - CircleAvatar
      - Icon
      - ListTile
      - Card
      - Button
      ----------
      - InkWell
      - GestureDetector
      ----------
      - Form
      ----------
      - Chart
      - Map dgn FlutterMap
      
    Layout
      - Row
      - Column
      - Wrap
      - Stack
      - Orientation Builder
      - Layout Builder

    List
      - ListView
      - GridView
    Navigasi
      - Pindah halaman, back
      - Masuk ke halaman dan tidak bisa kembali lagi
    State Management
      StatelessWidget
      StatefulWidget
      - Counter
      - Loading
      - Visibile
      - Animation
      - Cart
    */

    /*
    NamaWidget(
      property: value,
      child:
      children:

      event
      onTap
      onDoubleTap
      onItemSelected

      builder
        itemBuilder
        dayBuilder
    )
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              )
                  .animate(
                    delay: 1000.ms,
                  )
                  .tint(
                    color: Colors.red,
                  )
                  .shake()
                  .move()
                  .flip()
                  .rotate(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialDashboardView> createState() => TutorialDashboardController();
}
