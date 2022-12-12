import 'package:example/core.dart';
import 'package:example/module/tutorial/tr_example/util/obs.dart';
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

  var counter = 23.obs();
}
