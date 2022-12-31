import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class CgMainService {
  static List<Map> menuList = [
    {
      'label': 'HotKey',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'onPressed': () {},
    },
    {
      'label': 'Scaffold',
      'icon': MdiIcons.screwdriver,
      'color': Colors.green,
      'onPressed': () {},
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.mapMarkerPath,
      'color': Colors.red,
      'onPressed': () {},
    },
    {
      'label': 'Container',
      'icon': MdiIcons.box,
      'color': Colors.purple,
      'onPressed': () {},
    },
    {
      'label': 'Text',
      'icon': MdiIcons.textBox,
      'color': Colors.orange,
      'onPressed': () {},
    },
    {
      'label': 'Image',
      'icon': MdiIcons.image,
      'color': Colors.pink,
      'onPressed': () {},
    },
    {
      'label': 'Icon',
      'icon': MdiIcons.emoticonHappyOutline,
      'color': Colors.yellow,
      'onPressed': () {},
    },
    {
      'label': 'CircleAvatar',
      'icon': MdiIcons.accountCircleOutline,
      'color': Colors.teal,
      'onPressed': () {},
    },
    {
      'label': 'Layout',
      'icon': MdiIcons.viewGrid,
      'color': Colors.brown,
      'onPressed': () {},
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.indigo,
      'onPressed': () {},
    },
    {
      'label': 'ListViewItem',
      'icon': MdiIcons.viewListOutline,
      'color': Colors.lime,
      'onPressed': () {},
    },
    {
      'label': 'GridView',
      'icon': MdiIcons.viewGridPlus,
      'color': Colors.cyan,
      'onPressed': () {},
    },
    {
      'label': 'TableView',
      'icon': MdiIcons.table,
      'color': Colors.cyan,
      'onPressed': () {},
    },
    {
      'label': 'ChartView',
      'icon': MdiIcons.chartLine,
      'color': Colors.cyan,
      'onPressed': () {},
    },
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.amber,
      'onPressed': () {},
    },
  ];

//Buatlah List<Map> uiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Dashboard, ListView, DetailView, ReportView, ProfileView dengan color yang unik dan gunakan MdiIcons.
  static List<Map> uiMenuList = [
    {
      'label': 'Login',
      'icon': MdiIcons.loginVariant,
      'color': Colors.purple,
      'onPressed': () {},
    },
    {
      'label': 'Dashboard',
      'icon': MdiIcons.viewDashboard,
      'color': Colors.blue,
      'onPressed': () {},
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'onPressed': () {},
    },
    {
      'label': 'DetailView',
      'icon': MdiIcons.viewGrid,
      'color': Colors.yellow,
      'onPressed': () {},
    },
    {
      'label': 'ReportView',
      'icon': MdiIcons.chartBar,
      'color': Colors.red,
      'onPressed': () {},
    },
    {
      'label': 'ProfileView',
      'icon': MdiIcons.accountCircle,
      'color': Colors.purple,
      'onPressed': () {},
    },
  ];

//Buatlah List<Map> hyperUiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Form, ListView, FireStream, Dialog, Navigation, Utility, MVC Generator dengan color yang unik dan gunakan MdiIcons.
  static List<Map> hyperUiMenuList = [
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'onPressed': () {},
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'onPressed': () {},
    },
    {
      'label': 'FireStream',
      'icon': MdiIcons.fire,
      'color': Colors.red,
      'onPressed': () {},
    },
    {
      'label': 'Dialog',
      'icon': MdiIcons.message,
      'color': Colors.purple,
      'onPressed': () {},
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.navigation,
      'color': Colors.orange,
      'onPressed': () {},
    },
    {
      'label': 'Utility',
      'icon': MdiIcons.wrench,
      'color': Colors.teal,
      'onPressed': () {},
    },
    {
      'label': 'MVC Generator',
      'icon': MdiIcons.codeBraces,
      'color': Colors.pink,
      'onPressed': () {},
    },
  ];

//Buatlah List<Map> demoAppList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa POS, Car Rental, Barber Shop dengan color yang unik dan gunakan MdiIcons.
  static List<Map> demoAppList = [
    {
      'label': 'POS',
      'icon': MdiIcons.cashRegister,
      'color': Colors.green,
      'onPressed': () {},
    },
    {
      'label': 'Car Rental',
      'icon': MdiIcons.car,
      'color': Colors.blue,
      'onPressed': () {},
    },
    {
      'label': 'Barber Shop',
      'icon': MdiIcons.scissorsCutting,
      'color': Colors.orange,
      'onPressed': () {},
    },
  ];
}
