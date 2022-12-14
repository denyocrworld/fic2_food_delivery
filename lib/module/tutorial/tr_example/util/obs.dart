import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

List<ValueNotifier> valueNotifiers = [];
List<State> stateList = [];

observable(State state) {
  stateList.add(state);
}

runStateList() {
  print("stateList: ${stateList.length}");
  for (var state in stateList) {
    if (state.mounted) state.setState(() {});
  }
}

extension ObsExt on num {
  ValueNotifier<num> get obs {
    var vn = ValueNotifier(this);
    vn.value = obsStorage.get("$hashCode") ?? vn.value;
    vn.addListener(() {
      obsStorage.put("$hashCode", vn.value);
      runStateList();
    });
    valueNotifiers.add(vn);
    return vn;
  }
}

extension ObsStringExt on String {
  ValueNotifier<String> get obs {
    var vn = ValueNotifier(this);
    vn.value = obsStorage.get("$hashCode") ?? vn.value;
    vn.addListener(() {
      obsStorage.put("$hashCode", vn.value);
      runStateList();
    });
    valueNotifiers.add(vn);
    return vn;
  }
}

late Box obsStorage;

class ObsStorage {
  static initializeObsStorage() async {
    if (!kIsWeb) {
      var path = await getTemporaryDirectory();
      Hive.init(path.path);
    }
    obsStorage = await Hive.openBox('obsStorage');
  }
}
