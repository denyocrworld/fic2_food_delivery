import 'package:example/core.dart';
import 'package:flutter/material.dart';

class FormUISwitchView extends StatelessWidget {
  const FormUISwitchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExCard(
      title: "Switch",
      children: [
        Switch(
          value: false,
          onChanged: (value) {},
        ),
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Radio(
          value: false,
          groupValue: "gender",
          onChanged: (value) {},
        ),
      ],
    );
  }
}
