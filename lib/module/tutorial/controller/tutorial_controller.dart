import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialController extends State<TutorialView> implements MvcController {
  static late TutorialController instance;
  late TutorialView view;

  //* Gimana cara bikin keranjang belanja di Flutter?
  //! Wah itu sih gampang banget!
  //? Anak TK Cilukbabay sudah bisa semua!

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
