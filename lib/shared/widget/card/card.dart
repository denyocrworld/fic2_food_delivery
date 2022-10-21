import 'package:flutter/material.dart';

class ExCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const ExCard({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Divider(),
            ...children,
          ],
        ),
      ),
    );
  }
}
