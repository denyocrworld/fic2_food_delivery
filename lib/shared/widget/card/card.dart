import 'package:flutter/material.dart';

class ExCard extends StatelessWidget {
  final String title;
  final double width;
  final IconData? icon;
  final List<Widget> children;
  final List<Widget> actions;
  final List<Widget> bottomActions;
  final EdgeInsets? padding;
  const ExCard({
    Key? key,
    required this.title,
    this.width = 240.0,
    this.children = const [],
    this.padding,
    this.actions = const [],
    this.bottomActions = const [],
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 300.0,
      child: Card(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 24.0,
                ),
                child: Row(
                  children: [
                    if (icon != null) ...[
                      Icon(icon),
                      const SizedBox(
                        width: 6.0,
                      ),
                    ],
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        actions.length,
                        (index) {
                          return SizedBox(
                            height: 30.0,
                            child: FittedBox(
                              child: actions[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1.0,
              ),
              Container(
                padding: padding ?? const EdgeInsets.all(8.0),
                child: Column(
                  children: children,
                ),
              ),
              if (bottomActions.isNotEmpty) ...[
                const Divider(
                  height: 1.0,
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: bottomActions,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
