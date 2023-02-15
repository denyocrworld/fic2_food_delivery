import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PosView extends StatefulWidget {
  const PosView({Key? key}) : super(key: key);

  Widget build(context, PosController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mini Game"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => controller.doAnimation(),
                    child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  InkWell(
                    onTap: () => controller.doAnimation(),
                    child: const AnimatedRotation(
                      duration: Duration(milliseconds: 100),
                      turns: 180 / 360,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            bottom: controller.animated ? 60 : 200,
            left: controller.animated ? 85 : -30,
            child: Column(
              children: [
                AnimatedRotation(
                  duration: const Duration(milliseconds: 900),
                  turns: 20 / 360,
                  child: Container(
                    width: 4,
                    height: 300.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 70.0,
                  ),
                  child: const CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.green,
                    child: AnimatedRotation(
                      duration: Duration(milliseconds: 100),
                      turns: 180 / 360,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            bottom: controller.animated ? 60 : 200,
            right: controller.animated ? 85 : -30,
            child: Column(
              children: [
                AnimatedRotation(
                  duration: const Duration(milliseconds: 900),
                  turns: -20 / 360,
                  child: Container(
                    width: 4,
                    height: 300.0,
                    color: Colors.white,
                  ),
                ),
                const CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.green,
                  child: AnimatedRotation(
                    duration: Duration(milliseconds: 100),
                    turns: 180 / 360,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<PosView> createState() => PosController();
}
