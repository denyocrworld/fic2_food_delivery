import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ThemeEditor {
  static List themes = [
    getDefaultTheme(),
    getDarkTheme(),
  ];

  static int selectedIndex = 1;

  static ValueNotifier<ThemeData> mainTheme =
      ValueNotifier<ThemeData>(themes[selectedIndex]);

  static change(int index) {
    selectedIndex = index;
    ThemeEditor.mainTheme.value = ThemeEditor.themes[selectedIndex];
  }

  static Widget build({
    required Function(ThemeData theme) builder,
  }) {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: ThemeEditor.mainTheme,
      builder: (context, value, _) {
        return builder(value);
      },
    );
  }
}

extension ThemeEditorExtension on Widget {
  Widget get useThemeEditor {
    return ValueListenableBuilder<ThemeData>(
      valueListenable: ThemeEditor.mainTheme,
      builder: (context, value, _) {
        return Theme(
          data: value,
          child: this,
        );
      },
    );
  }
}
