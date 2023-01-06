import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/eln_main_navigation_view.dart';

class ElnMainNavigationController extends State<ElnMainNavigationView>
    implements MvcController {
  static late ElnMainNavigationController instance;
  late ElnMainNavigationView view;

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
  List menu = [
    {
      "icon": Icons.dashboard,
      "onTap": () {},
    },
    {
      "icon": Icons.play_circle,
      "onTap": () {},
    },
    {
      "icon": Icons.calendar_month,
      "onTap": () {},
    },
    {
      "icon": Icons.chat_bubble,
      "onTap": () {},
    }
  ];
}
