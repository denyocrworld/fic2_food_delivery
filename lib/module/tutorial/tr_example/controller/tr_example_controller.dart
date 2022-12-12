import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrExampleController extends State<TrExampleView>
    implements MvcController {
  static late TrExampleController instance;
  late TrExampleView view;

  @override
  void initState() {
    instance = this;
    stateList.add(this);
    super.initState();
  }

  @override
  void dispose() {
    stateList.remove(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  ValueNotifier<int> blueCounter = ValueNotifier(0);
  var nomax = 23.obs();
  var name = "Deny".obs();
  int xcounter = 23;
}

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
    print(hashCode);
    print(runtimeType);
    var vn = ValueNotifier(this);
    print("addListener to $this");
    vn.addListener(() {
      print("Listeners is works!");
      // state.setState(() {});
      runStateList();
    });
    valueNotifiers.add(vn);
    return vn;
  }
}

extension ObsStringExt on String {
  ValueNotifier<String> obs() {
    print(hashCode);
    print(runtimeType);
    var vn = ValueNotifier(this);
    print("addListener to $this");
    vn.addListener(() {
      print("Listeners is works!");
      // state.setState(() {});
      runStateList();
    });
    valueNotifiers.add(vn);
    return vn;
  }
}
