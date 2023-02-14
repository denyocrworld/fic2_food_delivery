import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/util/input/input.dart';
import 'package:hyper_ui/state_util.dart';
import '../service/fbk_wpm_service.dart';
import '../view/fbk_wpm_view.dart';

class FbkWpmController extends State<FbkWpmView> implements MvcController {
  static late FbkWpmController instance;
  late FbkWpmView view;

  @override
  void initState() {
    instance = this;
    FbkWpmService.words.shuffle();
    Future.delayed(const Duration(milliseconds: 200), () {
      Input.focus("input");
    });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  FocusNode focusNode = FocusNode();

  int currentIndex = 0;
  int word = 0;
  String get currentText {
    return FbkWpmService.words[currentIndex];
  }

  validate(value) {
    Input.set("input", "");
    if (currentText == value) {
      word++;
    }
    currentIndex++;
    setState(() {});
    Input.focus("input");
  }
}
