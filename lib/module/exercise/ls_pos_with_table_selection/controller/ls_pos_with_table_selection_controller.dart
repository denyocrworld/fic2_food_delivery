import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_pos_with_table_selection_view.dart';

class LsPosWithTableSelectionController extends State<LsPosWithTableSelectionView> implements MvcController {
  static late LsPosWithTableSelectionController instance;
  late LsPosWithTableSelectionView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}