import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
State
- View State (State di dalam halaman)
- Global State
- Reuseable Widget State

- Freelance
- Fulltime

StatefulWidget  v
LocationPicker
LocationPickerState

Getx  v
LocationPicker
LocationPickerController

Mobx  v
LocationPicker
LocationPickerController

Provider 
LocationPicker
LocationPickerProvider

Riverpod
LocationPicker
LocationPickerStateProvider

Cubit
LocationPicker
LocationPickerCubit

BLoC
LocationPicker
LocationPickerEvent
LocationPickerState
LocationPickerBloc

BLoC
ImagePicker
ImagePickerEvent
ImagePickerState
ImagePickerBloc

Backend
- Bisa bikin API
> Login, Logout, CRUD
> Middleware (Bisa proteksi endpoint)
- Bisa bikin dokumentasi API
> Postman/Insomia/ThunderClient
> Web

(Optional)
- Integrasi dengan 3rd party API
> Payment gateway (Midtrans)
*/
//CTRL+SHIFT+C => Controller
//CTRL+SHIFT+V => View
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

/*
Basic Pemrograman
- Variable
- Operator Aritmatika
- IF Statement
- List/Array
- Map
- Looping
- Function
- OOP

MVC
- Cukup mudah
*/
  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      //CTRL+SHIFT+ALT+R
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}

/*
MVC
- BLoC
- Provider
- Riverpod
- Getx
- setState

Getx
- MVC
- BLoc Architecture
- Riverpod Architecture
- Clean Architecture

Architecture
- MVC
- BLoc Architecture
- Riverpod Architecture
- Clean Architecture
- MVVM

State Management
- Getx
- Provider
- Riverpod


setState
---
View
  StatefulWidget
Controller
  State

Getx
---
View
  GetBuilder, GetView, StatelessWidget
Controller
  GetxController

Provider
---
View
  Stateless/full Widget
Controller
  ChangeNotifier

MVC
Login
LoginView
LoginController
*/
