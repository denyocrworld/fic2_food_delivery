// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SnippetContainer extends StatelessWidget {
  final Widget Function() builder;
  final String snippet;
  const SnippetContainer({
    Key? key,
    required this.builder,
    required this.snippet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 4.0,
              ),
              child: Text(snippet),
            ),
          ),
        ),
        builder(),
      ],
    );
  }
}
