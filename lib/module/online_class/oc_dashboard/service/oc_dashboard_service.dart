import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class OcDashboardService {
  static List<Map> formList = [
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'page': const OcFormView(),
    },
  ];
  static List<Map> menuList = [
    {
      'label': 'HotKey',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': const CgHotkeyView(),
    },
    {
      'label': 'Scaffold',
      'icon': MdiIcons.screwdriver,
      'color': Colors.green,
      'page': const CgScaffoldView(),
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.mapMarkerPath,
      'color': Colors.red,
      'page': const CgNavigationView(),
    },
    {
      'label': 'Container',
      'icon': MdiIcons.card,
      'color': Colors.purple,
      'page': const CgContainerView(),
    },
    {
      'label': 'Card',
      'icon': MdiIcons.cardOutline,
      'color': Colors.purple,
      'page': const CgCardView(),
    },
    {
      'label': 'Text',
      'icon': MdiIcons.textBox,
      'color': Colors.orange,
      'page': const CgTextView(),
    },
    {
      'label': 'Image',
      'icon': MdiIcons.image,
      'color': Colors.pink,
      'page': const CgImageView(),
    },
    {
      'label': 'Icon',
      'icon': MdiIcons.emoticonHappyOutline,
      'color': Colors.yellow,
      'page': const CgIconView(),
    },
    {
      'label': 'CircleAvatar',
      'icon': MdiIcons.accountCircleOutline,
      'color': Colors.teal,
      'page': const CgCircleAvatarView(),
    },
    {
      'label': 'Layout',
      'icon': MdiIcons.viewGrid,
      'color': Colors.brown,
      'page': const CgLayoutView(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.indigo,
      'page': const CgListView(),
    },
    {
      'label': 'ListViewItem',
      'icon': MdiIcons.viewListOutline,
      'color': Colors.lime,
      'page': const CgListItemView(),
    },
    {
      'label': 'GridView',
      'icon': MdiIcons.viewGridPlus,
      'color': Colors.cyan,
      'page': Container(),
    },
    {
      'label': 'TableView',
      'icon': MdiIcons.table,
      'color': Colors.cyan,
      'page': const CgTableView(),
    },
    {
      'label': 'ChartView',
      'icon': MdiIcons.chartLine,
      'color': Colors.cyan,
      'page': const CgChartView(),
    },
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.amber,
      'page': const CgFormView(),
    },
    {
      'label': 'Button',
      'icon': MdiIcons.buttonPointer,
      'color': Colors.red,
      'page': const CgButtonView(),
    },
  ];
}
