import 'package:flutter/material.dart';

class BergetarWidget extends StatefulWidget {
  @override
  State<BergetarWidget> createState() => _BergetarWidgetState();
}

class _BergetarWidgetState extends State<BergetarWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final controller = AnimationController(
          duration: const Duration(milliseconds: 500),
          vsync: this,
        );
        animation = Tween(begin: 0.0, end: 1.0).animate(controller);
        controller.forward();
        animation.addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            controller.reverse();
          } else if (status == AnimationStatus.dismissed) {
            controller.forward();
          }
        });
      },
      child: ScaleTransition(
        scale: animation,
        child: Container(
          width: 200.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Center(
            child: Text(
              'My Button',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
