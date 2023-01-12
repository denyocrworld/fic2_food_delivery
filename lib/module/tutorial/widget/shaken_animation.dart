import 'package:flutter/material.dart';

class ShakeAnimation extends StatefulWidget {
  @override
  _ShakeAnimationState createState() => _ShakeAnimationState();
}

class _ShakeAnimationState extends State<ShakeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  bool animated = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    _animation = Tween(begin: -1.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.elasticInOut));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: InkWell(
        onTap: () {
          animated = !animated;

          if (animated) {
            _animation = Tween(begin: -1.0, end: 1.0).animate(CurvedAnimation(
                parent: _animationController, curve: Curves.elasticInOut));
            _animationController.forward();
          } else {
            _animation = Tween(begin: 1.0, end: -1.0).animate(CurvedAnimation(
                parent: _animationController, curve: Curves.elasticInOut));
            _animationController.forward();
            // _animationController.forward();
          }
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value * 10, 10),
          child: child,
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
