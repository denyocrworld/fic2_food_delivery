import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class CgMainService {
  List<Map> promotionList = [
    {
      'label': 'Komunitas Berandal',
      'icon': MdiIcons.commaBox,
      'color': Colors.orange,
      'page': Container(),
      'action': () async {
        launchUrl(Uri.parse(
          "https://chat.whatsapp.com/GL00oxRZAID4wW0P0mCTKl",
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

  List<Map> onlineClassMenuList = [
    {
      'label': 'Layout',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': const OcStateManagementView(),
    },
    {
      'label': 'HTTP Request',
      'icon': MdiIcons.web,
      'color': Colors.green,
      'page': const OcHttpRequestView(),
    },
    {
      'label': 'Firebase',
      'icon': MdiIcons.firebase,
      'color': Colors.green,
      'page': const OcFirebaseView(),
    },
  ];
  List<Map> onlineClassExercises = [
    {
      'label': 'Layout',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': const ExLayoutView(),
    },
    {
      'label': 'State Management',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': Container(),
    },
    {
      'label': 'HTTP Request',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': Container(),
    },
  ];

  List<Map> menuList = [
    {
      'label': 'HotKey',
      'icon': MdiIcons.keyboardOutline,
      'color': Colors.blue,
      'page': const CgHotkeyView(),
    },
    {
      'label': 'Common',
      'icon': MdiIcons.soccerField,
      'color': Colors.yellow,
      'page': const CgCommonView(),
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
      'page': const CgGridView(),
    },
    {
      'label': 'Wrap',
      'icon': MdiIcons.wrap,
      'color': Colors.cyan,
      'page': const CgWrapView(),
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
      'label': 'MapView',
      'icon': MdiIcons.map,
      'color': Colors.cyan,
      'page': const CgMapView(),
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
    {
      'label': 'Carousel',
      'icon': MdiIcons.alertBoxOutline,
      'color': Colors.red,
      'page': const CgCarouselView(),
    },
    {
      'label': 'Alert',
      'icon': MdiIcons.alertBoxOutline,
      'color': Colors.grey,
      'page': const CgAlertView(),
      'tag': 'Nunggu Mood'
    },
    {
      'label': 'Get ???',
      'icon': MdiIcons.firebase,
      'color': Colors.red,
      'page': const CgGetView(),
    },
    {
      'label': 'HTTP Request',
      'icon': MdiIcons.web,
      'color': Colors.blue,
      'page': const CgHttpView(),
    },
    {
      'label': 'Firebase',
      'icon': MdiIcons.firebase,
      'color': Colors.orange,
      'page': const CgFirebaseView(),
    },
  ];

//Buatlah List<Map> uiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Dashboard, ListView, DetailView, ReportView, ProfileView dengan color yang unik dan gunakan MdiIcons.
  List<Map> uiMenuList = [
    {
      'label': 'Login',
      'icon': MdiIcons.loginVariant,
      'color': Colors.grey,
      'page': const CgPremadeLoginView(),
      'tag': 'Nunggu Mood',
    },
    {
      'label': 'Dashboard',
      'icon': MdiIcons.viewDashboard,
      'color': Colors.grey,
      'page': const CgPremadeDashboardView(),
      'tag': 'Nunggu Mood',
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.grey,
      'page': const CgPremadeListView(),
      'tag': 'Nunggu Mood',
    },
    {
      'label': 'DetailView',
      'icon': MdiIcons.viewGrid,
      'color': Colors.grey,
      'page': const CgPremadeDetailView(),
      'tag': 'Nunggu Mood',
    },
    {
      'label': 'ReportView',
      'icon': MdiIcons.chartBar,
      'color': Colors.grey,
      'page': const CgPremadeReportView(),
      'tag': 'Nunggu Mood',
    },
    {
      'label': 'ProfileView',
      'icon': MdiIcons.accountCircle,
      'color': Colors.grey,
      'page': const CgPremadeProfileView(),
      'tag': 'Nunggu Mood',
    },
  ];

  List<Map> slicingUiList = [
    {
      'label': 'Shakuro UI',
      'icon': MdiIcons.card,
      'color': Colors.green,
      'page': const ShakuroDashboardView(),
    },
    {
      'label': '???',
      'icon': MdiIcons.card,
      'color': Colors.orange,
      'page': Container(),
    },
    {
      'label': '???',
      'icon': MdiIcons.card,
      'color': Colors.blue,
      'page': Container(),
    },
  ];

//Buatlah List<Map> hyperUiMenuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa Form, ListView, FireStream, Dialog, Navigation, Utility, MVC Generator dengan color yang unik dan gunakan MdiIcons.
  List<Map> hyperUiMenuList = [
    {
      'label': 'Form',
      'icon': MdiIcons.formTextbox,
      'color': Colors.blue,
      'page': const CgHyperuiFormView(),
    },
    {
      'label': 'ListView',
      'icon': MdiIcons.viewList,
      'color': Colors.grey,
      'page': const CgHyperuiListView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'FireStream',
      'icon': MdiIcons.fire,
      'color': Colors.grey,
      'page': const CgHyperuiFireStreamView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'Dialog',
      'icon': MdiIcons.message,
      'color': Colors.grey,
      'page': const CgHyperuiDialogView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'Navigation',
      'icon': MdiIcons.navigation,
      'color': Colors.grey,
      'page': const CgHyperuiNavigationView(),
      'tag': "Nunggu Mood",
    },
    {
      'label': 'Utility',
      'icon': MdiIcons.wrench,
      'color': Colors.grey,
      'page': const CgHyperuiUtilityView(),
      'tag': "Nunggu Mood",
    },
    // {
    //   'label': 'MVC Generator',
    //   'icon': MdiIcons.codeBraces,
    //   'color': Colors.grey,
    //   'page': const CgHyperuiMvcGeneratorView(),
    //   'tag': "Nunggu Mood",
    // },
  ];

//Buatlah List<Map> demoAppList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa POS, Car Rental, Barber Shop dengan color yang unik dan gunakan MdiIcons.
  List<Map> demoAppList = [
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
}
