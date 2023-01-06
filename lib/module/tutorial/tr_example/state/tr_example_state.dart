import 'package:hyper_ui/module/tutorial/tr_example/util/obs.dart';

class TrExampleState {
  var counter = 0.obs;
  updateCounter() async {
    counter.value++;
  }
}
