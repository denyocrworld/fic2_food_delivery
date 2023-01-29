import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Kelas Online bersama Fajar
Flutter - Layout
? Minggu
? 10:00 WIB - Sel3sai
https://www.tiktok.com/@codingwithdeny/live


BELAJAR FLUTTER
---
State Management
StatefulWidget
StatelessWidget

Lifecycle

setState
Stream
ValueNotifier

BLoc, Getx, Provicer, Riverpod, Mobx


setState
---
- Aplikasi yang besar
- Scalable
- Mudah di test

- Facebook
- Jobstreet
- Linkedin
- Freelancer.co.id
- Projects.co.id
- Telegram di komunitas
- Glints
- Indeed
- 

(Sangat optional, tidak wajib)
Getx, Provider, Bloc

*/

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
        actions: const [],
      ),
      //ALT+SHIFT+S
      // body: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     var item = {};

      //     return Card(
      //       child: ListTile(
      //         leading: CircleAvatar(
      //           backgroundColor: Colors.grey[200],
      //           backgroundImage: const NetworkImage(
      //             "https://i.ibb.co/QrTHd59/woman.jpg",
      //           ),
      //         ),
      //         title: const Text("Jessica Doe"),
      //         subtitle: const Text("Programmer"),
      //       ),
      //     );
      //   },
      // ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            //contrad
            //con
            //conimage
            Container(
              height: 160.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
          ],
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
