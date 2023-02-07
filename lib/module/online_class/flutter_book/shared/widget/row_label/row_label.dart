import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget rowLabel(Function func) {
  var text = func.toString();
  int startIndex = text.indexOf("'") + 1;
  int endIndex = text.lastIndexOf("'");
  String functionName = text.substring(startIndex, endIndex);
  bool isDone = func() ?? false;

  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 6.0,
    ),
    child: Row(
      children: [
        Expanded(
          child: Text(functionName),
        ),
        Icon(
          isDone ? Icons.check_circle_outline : MdiIcons.clockOutline,
          color: isDone ? Colors.green : Colors.grey,
          size: 24.0,
        ),
      ],
    ),
  );
}
