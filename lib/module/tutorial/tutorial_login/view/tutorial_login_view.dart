import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialLoginView extends StatefulWidget {
  const TutorialLoginView({Key? key}) : super(key: key);

  Widget build(context, TutorialLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.0,
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100.0,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Container(
                    height: 100.0,
                    color: Colors.brown,
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.0,
                    color: Colors.orange,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Wrap(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.purple,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.brown,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 164.0,
                width: 164.0,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black26,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).cardColor.withOpacity(0.6),
                          child: const Icon(
                            Icons.favorite,
                            size: 14.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.black54,
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "How to play guitar for beginner",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialLoginView> createState() => TutorialLoginController();
}
