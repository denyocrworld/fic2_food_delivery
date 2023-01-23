import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

// ! Kelas Online Dart/Flutter Gelombang 2
// ? https://capekngoding.com

/*
Kelas Tiktok hari ini:
10:35 WIB
? Bantu Share!!

Materi:
- Card
- ListTile

Layout
- Row (Horizontal)
- Column (Vertical)
- Expanded
- SingleChildScrollView

============
- Stack - Positioned
- Wrap

===============

MediaQuery
  OrientationBuilder
  LayoutBuilder

===============

- ListView

NamaWidget(
  property: value,

)
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
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Icon(
                Icons.more_horiz,
                size: 24.0,
              ),
              const CircleAvatar(
                radius: 12.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 12.0,
                ),
              ),
              const CircleAvatar(
                radius: 12.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.cloud_download,
                  color: Colors.white,
                  size: 12.0,
                ),
              ),
              //====================================
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  title: Text(
                    "Moby",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("71 songs"),
                  trailing: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      size: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  title: Text(
                    "I Like it",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Cardi B, Bad bunny & J Balvin"),
                  trailing: Icon(
                    Icons.cloud_download,
                    size: 20.0,
                  ),
                ),
              ),
              //====================================
              const Divider(),
              const Divider(),
              Card(
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  title: Row(
                    children: const [
                      Text(
                        "Tyler Phelps",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        "Wao is amazing!",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  subtitle: const Text("15 JAN 2018 8 Likes"),
                  trailing: const Icon(
                    Icons.favorite,
                    size: 24.0,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/3pPYd14/freeban.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: const [
                        Positioned(
                          right: 10,
                          top: 10,
                          child: Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    "Daddy yankee | Dura (video oficial)",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  const Text(
                    "1B views 7 months ago",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Daddy yankee",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              //====================================
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.ibb.co/3pPYd14/freeban.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 10,
                      top: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 10,
                      bottom: 20,
                      child: Text(
                        "Hello World",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.2,
                backgroundImage: const NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
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
