import 'package:flutter/material.dart';
import '../controller/game_controller.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  Widget build(context, GameController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Game - SCORE: ${controller.score}"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.start),
              label: const Text("Start"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.start(),
            ),
          ),
        ],
      ),
      body: Listener(
        behavior: HitTestBehavior.opaque,
        onPointerHover: controller.updateLocation,
        onPointerMove: controller.updateLocation,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ...List.generate(
                controller.blockRainList.length,
                (index) {
                  var item = controller.blockRainList[index];
                  return Positioned(
                    left: item["x"],
                    top: item["y"],
                    // duration: Duration(
                    //     milliseconds: int.parse(item["duration"].toString())),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  );
                },
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: controller.x,
                bottom: 10,
                child: Container(
                  width: 140.0,
                  height: 30.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<GameView> createState() => GameController();
}
