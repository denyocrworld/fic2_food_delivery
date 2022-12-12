import 'package:flutter/material.dart';

List<ValueNotifier> valueNotifiers = [];
List<State> stateList = [];

runStateList() {
  print("stateList: ${stateList.length}");
  for (var state in stateList) {
    if (state.mounted) state.setState(() {});
  }
}

extension ObsExt on num {
  ValueNotifier<num> obs() {
    var vn = ValueNotifier(this);
    vn.addListener(() {
      runStateList();
    });
    valueNotifiers.add(vn);
    return vn;
  }
}

extension ObsStringExt on String {
  ValueNotifier<String> obs() {
    var vn = ValueNotifier(this);
    vn.addListener(() {
      print("Listeners is works!");
      // state.setState(() {});
      runStateList();
    });
    valueNotifiers.add(vn);
    return vn;
  }
}
