import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgMainService {
  static List<Map> promotionList = [
    {
      'label': 'Komunitas Berandal',
      'icon': MdiIcons.commaBox,
      'color': Colors.orange,
      'page': Container(),
      'action': () async {
        launchUrl(Uri.parse(
          "https://chat.whatsapp.com/HijFMUeQx8A5fcIj0eJnSB",
        ));
      }
    },
    {
      'label': 'Youtube',
      'icon': MdiIcons.youtube,
      'color': Colors.red,
      'page': Container(),
      'action': () async {
        launchUrl(Uri.parse(
          "https://youtube.com/@capekNgoding",
        ));
      }
    },
    {
      'label': 'Kelas Online Flutter',
      'icon': MdiIcons.codeBraces,
      'color': Colors.green,
      'page': Container(),
      'action': () async {
        launchUrl(Uri.parse(
          "https://wa.me/6282146727409?text=Selamat siang, saya ingin join kelas online Dart/Flutter.",
        ));
      }
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

//Buatlah List<Map> uiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Dashboard, ListView, DetailView, ReportView, ProfileView dengan color yang unik dan gunakan MdiIcons.
  static List<Map> uiMenuList = [
    {
      'label': 'Login',
      'icon': MdiIcons.loginVariant,
      'color': Colors.purple,
      'page': const CgPremadeLoginView(),
    },
    {
      'label': 'Dashboard',
      'icon': MdiIcons.viewDashboard,
      'color': Colors.blue,
      'page': const CgPremadeDashboardView(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'page': const CgPremadeListView(),
    },
    {
      'label': 'DetailView',
      'icon': MdiIcons.viewGrid,
      'color': Colors.yellow,
      'page': const CgPremadeDetailView(),
    },
    {
      'label': 'ReportView',
      'icon': MdiIcons.chartBar,
      'color': Colors.red,
      'page': const CgPremadeReportView(),
    },
    {
      'label': 'ProfileView',
      'icon': MdiIcons.accountCircle,
      'color': Colors.purple,
      'page': const CgPremadeProfileView(),
    },
  ];

//Buatlah List<Map> hyperUiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Form, ListView, FireStream, Dialog, Navigation, Utility, MVC Generator dengan color yang unik dan gunakan MdiIcons.
  static List<Map> hyperUiMenuList = [
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'page': const CgHyperuiFormView(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.green,
      'page': const CgHyperuiListView(),
    },
    {
      'label': 'FireStream',
      'icon': MdiIcons.fire,
      'color': Colors.red,
      'page': const CgHyperuiFireStreamView(),
    },
    {
      'label': 'Dialog',
      'icon': MdiIcons.message,
      'color': Colors.purple,
      'page': const CgHyperuiDialogView(),
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.navigation,
      'color': Colors.orange,
      'page': const CgHyperuiNavigationView(),
    },
    {
      'label': 'Utility',
      'icon': MdiIcons.wrench,
      'color': Colors.teal,
      'page': const CgHyperuiUtilityView(),
    },
    {
      'label': 'MVC Generator',
      'icon': MdiIcons.codeBraces,
      'color': Colors.pink,
      'page': const CgHyperuiMvcGeneratorView(),
    },
  ];

//Buatlah List<Map> demoAppList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa POS, Car Rental, Barber Shop dengan color yang unik dan gunakan MdiIcons.
  static List<Map> demoAppList = [
    {
      'label': 'POS',
      'icon': MdiIcons.cashRegister,
      'color': Colors.green,
      'page': Container(),
      'tag': 'Coming Soon',
    },
    {
      'label': 'Car Rental',
      'icon': MdiIcons.car,
      'color': Colors.blue,
      'page': Container(),
      'tag': 'Coming Soon',
    },
    {
      'label': 'Barber Shop',
      'icon': MdiIcons.scissorsCutting,
      'color': Colors.orange,
      'page': Container(),
      'tag': 'Coming Soon',
    },
  ];

  static List<Map> onlineClassExercises = [
    {
      'label': 'Basic Dart',
      'icon': MdiIcons.codeBraces,
      'color': Colors.blue[800],
      'page': const OceDartBasicView(),
      'tag': 'Member Only',
    },
    {
      'label': 'Basic Fluter',
      'icon': MdiIcons.codeBraces,
      'color': Colors.blue,
      'page': const OceFlutterBasicView(),
      'tag': 'Member Only',
    },
    {
      'label': 'Darts Certification',
      'icon': MdiIcons.codeBraces,
      'color': Colors.orange,
      'page': const OceDartCertificationView(),
      'tag': 'Member Only',
    },
    {
      'label': 'Flutters Certification',
      'icon': MdiIcons.codeBraces,
      'color': Colors.red,
      'page': const OceFlutterCertificationView(),
      'tag': 'Member Only',
    },
    {
      'label': 'Final Project (Season 1)',
      'icon': MdiIcons.codeBraces,
      'color': Colors.red,
      'page': const OceFinalProjectSeason1View(),
      'tag': 'Member Only',
    },
  ];
}
