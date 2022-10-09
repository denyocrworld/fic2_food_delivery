import 'package:flutter/material.dart';

class SideGroupTitle extends StatelessWidget {
  const SideGroupTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isExpanded = constraint.maxWidth > 50;
      if (!isExpanded) return Container();
      return Container(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Navigation",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color
                      ?.withOpacity(0.4),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
