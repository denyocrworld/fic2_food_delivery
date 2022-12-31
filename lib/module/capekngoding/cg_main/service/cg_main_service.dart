import 'package:example/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class CgMainService {
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
      'icon': MdiIcons.box,
      'color': Colors.purple,
      'page': const CgContainerView(),
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
  ];

//Buatlah List<Map> uiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Dashboard, ListView, DetailView, ReportView, ProfileView dengan color yang unik dan gunakan MdiIcons.
  static List<Map> uiMenuList = [
    {
      'label': 'Login',
      'icon': MdiIcons.loginVariant,
      'color': Colors.purple,
      'page': Container(),
    },
    {
      'label': 'Dashboard',
      'icon': MdiIcons.viewDashboard,
      'color': Colors.blue,
      'page': Container(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'page': Container(),
    },
    {
      'label': 'DetailView',
      'icon': MdiIcons.viewGrid,
      'color': Colors.yellow,
      'page': Container(),
    },
    {
      'label': 'ReportView',
      'icon': MdiIcons.chartBar,
      'color': Colors.red,
      'page': Container(),
    },
    {
      'label': 'ProfileView',
      'icon': MdiIcons.accountCircle,
      'color': Colors.purple,
      'page': Container(),
    },
  ];

//Buatlah List<Map> hyperUiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Form, ListView, FireStream, Dialog, Navigation, Utility, MVC Generator dengan color yang unik dan gunakan MdiIcons.
  static List<Map> hyperUiMenuList = [
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'page': Container(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'page': Container(),
    },
    {
      'label': 'FireStream',
      'icon': MdiIcons.fire,
      'color': Colors.red,
      'page': Container(),
    },
    {
      'label': 'Dialog',
      'icon': MdiIcons.message,
      'color': Colors.purple,
      'page': Container(),
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.navigation,
      'color': Colors.orange,
      'page': Container(),
    },
    {
      'label': 'Utility',
      'icon': MdiIcons.wrench,
      'color': Colors.teal,
      'page': Container(),
    },
    {
      'label': 'MVC Generator',
      'icon': MdiIcons.codeBraces,
      'color': Colors.pink,
      'page': Container(),
    },
  ];

//Buatlah List<Map> demoAppList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa POS, Car Rental, Barber Shop dengan color yang unik dan gunakan MdiIcons.
  static List<Map> demoAppList = [
    {
      'label': 'POS',
      'icon': MdiIcons.cashRegister,
      'color': Colors.green,
      'page': Container(),
    },
    {
      'label': 'Car Rental',
      'icon': MdiIcons.car,
      'color': Colors.blue,
      'page': Container(),
    },
    {
      'label': 'Barber Shop',
      'icon': MdiIcons.scissorsCutting,
      'color': Colors.orange,
      'page': Container(),
    },
  ];
}
