import 'package:flutter/material.dart';

import '../../../../core.dart';

class TrList extends StatelessWidget {
  final String title;
  final List items;
  final Widget? head;
  final Color? color;
  const TrList({
    Key? key,
    required this.title,
    required this.items,
    this.head,
    this.color,
  }) : super(key: key);

  header(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      width: MediaQuery.of(Get.currentContext).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(title),
        if (head != null) ...[
          head!,
          const SizedBox(
            height: 20.0,
          ),
        ],
        LayoutBuilder(builder: (context, constraints) {
          return Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(
              items.length,
              (index) {
                var item = items[index];
                var size = (constraints.biggest.width - (10 * 3)) / 4;
                return TutorialNavigationItem(
                  item: item,
                  size: size,
                  index: index,
                  color: color,
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
