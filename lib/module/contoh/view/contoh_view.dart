import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../../../_/scaffold/scaffold_bottom_navigationbar.dart';
import '../../../_/scaffold/scaffold_tabbar_vertical.dart';
import '../controller/contoh_controller.dart';

class ContohView extends StatefulWidget {
  const ContohView({Key? key}) : super(key: key);

  Widget build(context, ContohController controller) {
    controller.view = this;

    return const TemplateScaffoldBottomNavigationBar();
    return const TemplateScaffoldTabbarHorizontal();
  }

  @override
  State<ContohView> createState() => ContohController();
}
