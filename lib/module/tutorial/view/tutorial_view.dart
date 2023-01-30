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
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        validator: Validator.required,
                        value: null,
                        onChanged: (value) {
                          print("value: $value");
                          controller.photoUrl = value;
                        },
                      ),
                      QTextField(
                        label: "Name",
                        validator: Validator.required,
                        onChanged: (value) {},
                      ),
                      QNumberField(
                        label: "Age",
                        validator: Validator.required,
                        onChanged: (value) {},
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
