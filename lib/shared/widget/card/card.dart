import 'package:flutter/material.dart';

class ExCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  final List<Widget> children;
  final List<Widget> actions;
  const ExCard({
    Key? key,
    required this.title,
    required this.children,
    this.actions = const [],
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20.0,
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
                  ...actions,
                ],
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            ...children,
          ],
        ),
      ),
    );
  }
}
