import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/game_view.dart';

class GameController extends State<GameView> implements MvcController {
  static late GameController instance;
  late GameView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  double x = 0.0;
  double y = 0.0;
  int score = 0;
  List blockRainList = [
    {
      "duration": 5000,
      "x": 0.0,
      "y": 0.0,
    },
    {
      "duration": 3000,
      "x": 100.0,
      "y": 0.0,
    },
    {
      "duration": 8000,
      "x": 200.0,
      "y": 0.0,
    },
    {
      "duration": 7000,
      "x": 300.0,
      "y": 0.0,
    },
    {
      "duration": 10000,
      "x": 400.0,
      "y": 0.0,
    }
  ];

  void updateLocation(PointerEvent details) {
    x = details.position.dx;
    y = details.position.dy;

    debugPrint("x: $x");
    debugPrint("y: $y");
    update();
  }

  moveAllBlocksToBottom({
    int? id,
  }) {
    for (var i = 0; i < blockRainList.length; i++) {
      if (id != null) {
        if (blockRainList[i]["id"] != id) continue;
      }
      blockRainList[i]["y"] = 2000.0;
    }
  }

  start() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      for (var i = 0; i < blockRainList.length; i++) {
        blockRainList[i]["y"] += 10;
      }

      for (var i = 0; i < blockRainList.length; i++) {
        blockRainList[i]["y"] += 10;

        var x1 = x;
        var y1 = y;

        var x2 = blockRainList[i]["x"];
        var y2 = blockRainList[i]["y"];

        if (y2 >= y1) {
          if (x2 >= x1 || x2 <= (x1 + 140)) {
            //on collision
            blockRainList.removeAt(i);
            score++;
          }
        }
      }
      update();
    });
    // moveAllBlocksToBottom();
    //spawn 1 block / 3s

    var width = MediaQuery.of(context).size.width;
    int lastCreatedObjectID = 1;

    Timer.periodic(const Duration(milliseconds: 1500), (timer) async {
      blockRainList.add({
        "id": lastCreatedObjectID,
        "duration": 2000 + Random().nextInt(10000),
        "x": Random().nextInt(width.floor()) * 1.0,
        "y": 0.0,
      });
      lastCreatedObjectID++;
      update();

      await Future.delayed(const Duration(milliseconds: 1000));

      // moveAllBlocksToBottom(
      //     // id: lastCreatedObjectID,
      //     );
    });
  }
}
