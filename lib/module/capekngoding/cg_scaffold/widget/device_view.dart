// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../../shared/widget/dev/snippet_container/snippet_container.dart';

class DeviceView extends StatelessWidget {
  final String snippet;
  final Widget child;
  const DeviceView({
    Key? key,
    required this.snippet,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 700,
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: 1.0,
          color: Colors.grey[900]!,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Column(
        children: [
          const SnippetContainer("scaffold_bottom_navigation_bar"),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
