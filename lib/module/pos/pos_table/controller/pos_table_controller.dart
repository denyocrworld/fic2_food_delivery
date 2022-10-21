import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/pos_table_view.dart';

class PosTableController extends State<PosTableView> implements MvcController {
  static late PosTableController instance;
  late PosTableView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List tables = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24
  ];

  int selectedTable = -1;
}
