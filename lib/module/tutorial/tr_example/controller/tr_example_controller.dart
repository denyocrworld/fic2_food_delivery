import 'package:example/core.dart';
import 'package:example/module/tutorial/tr_example/state/tr_example_state.dart';
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

  TrExampleState state = TrExampleState();
}
