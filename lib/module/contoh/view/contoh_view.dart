import 'package:example/module/contoh/widget/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../../../_/scaffold/scaffold_bottom_navigationbar.dart';
import '../../../_/scaffold/scaffold_tabbar_vertical.dart';

class ContohView extends StatefulWidget {
  const ContohView({Key? key}) : super(key: key);

  Widget build(context, ContohController controller) {
    controller.view = this;

//Buatlah List<Map> menuList di Flutter yang berisi Map dengan label, icon,color dan event onPressed tanpa isi. Tambahkan 3 data di dalamnya berupa HotKey, Scaffold,  Navigation, Container, Text, Image, Icon, CircleAvatar, Layout, ListView, GridView, ListViewItem dan Form  dengan color yang unik dan gunakan MdiIcons.
    List<Map> menuList = [
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
        'label': 'GridView',
        'icon': MdiIcons.viewGridPlus,
        'color': Colors.cyan,
        'onPressed': () {},
      },
      {
        'label': 'ListViewItem',
        'icon': MdiIcons.viewListOutline,
        'color': Colors.lime,
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
    List<Map> uiMenuList = [
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
    List<Map> hyperUiMenuList = [
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
    List<Map> demoAppList = [
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

    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        backgroundColor: Colors.grey[300]!,
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey[200],
                  width: 340.0,
                  padding: const EdgeInsets.all(12.0),
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        Text(
                          "Hyper UI",
                          style: GoogleFonts.moonDance(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Write less do more~",
                          style: GoogleFonts.moonDance(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: menuList,
                          title: "Basic",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: uiMenuList,
                          title: "Premade UI",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: hyperUiMenuList,
                          title: "Hyper UI",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: demoAppList,
                          title: "Full Apps Demo",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return const TemplateScaffoldBottomNavigationBar();
    return const TemplateScaffoldTabbarHorizontal();
  }

  @override
  State<ContohView> createState() => ContohController();
}
