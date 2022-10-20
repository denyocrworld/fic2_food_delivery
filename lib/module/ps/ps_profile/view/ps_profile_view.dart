import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PsProfileView extends StatefulWidget {
  const PsProfileView({Key? key}) : super(key: key);

  Widget build(context, PsProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PsProfile"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doLogout(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //body
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 52.0,
                backgroundImage: NetworkImage(
                  FirebaseAuth.instance.currentUser!.photoURL ??
                      "https://i.ibb.co/S32HNjD/no-image.jpg",
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                FirebaseAuth.instance.currentUser!.displayName.toString(),
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                FirebaseAuth.instance.currentUser!.email.toString(),
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PsProfileView> createState() => PsProfileController();
}