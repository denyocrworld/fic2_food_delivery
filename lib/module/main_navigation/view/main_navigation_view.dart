import 'package:example/core.dart';
import 'package:example/module/main_navigation/model/navigation_item.dart';

import 'package:flutter/material.dart';

import '../widget/side_group_title.dart';
import '../widget/side_menu_item.dart';
import '../widget/top_bar.dart';

class MainNavigationView extends StatefulWidget {
  final Widget child;
  const MainNavigationView({
    super.key,
    required this.child,
  });

  @override
  State<MainNavigationView> createState() => MainNavigationViewState();
}

class MainNavigationViewState extends State<MainNavigationView> {
  static late MainNavigationViewState instance;
  int selectedIndex = 0;
  double groupAligment = -1.0;
  bool expanded = true;
  double sidebarWidth = 240.0;

  List navigationItems = [
    NavigationItem(
      icon: const Icon(Icons.dashboard),
      label: 'Dashboard',
      route: '/dashboard',
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Style Guide',
      route: '/style_guide',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Card',
      route: '/card',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(Icons.dashboard),
      label: 'Form UI',
      route: '/form_ui',
    ),

    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Hyper Ui',
      route: '/hyper_ui',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Theme',
      route: '/theme',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Dashboard Todo List',
      route: '/dashboard_todo_list',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Dashboard Food Delivery',
      route: '/dashboard_food_delivery',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Example',
      route: '/pos_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Debug',
      route: '/debug',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Widgets',
      route: '/widgets',
      items: [
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Bottom Navigation Bar Ui',
          route: '/bottom_navigation_bar_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Statistic Ui',
          route: '/statistic_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Accordions Ui',
          route: '/accordions_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Badge Ui',
          route: '/badge_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Chip Ui',
          route: '/chip_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Button Ui',
          route: '/button_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Tab Ui',
          route: '/tab_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Avatar Ui',
          route: '/avatar_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Scaffold Ui',
          route: '/scaffold_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Navigation Ui',
          route: '/navigation_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Appbar Ui',
          route: '/appbar_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'List Ui',
          route: '/list_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'List Item Ui',
          route: '/list_item_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Detail Ui',
          route: '/detail_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Dialog Ui',
          route: '/dialog_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Widget Ui',
          route: '/widget_ui',
          items: [],
        ),
        NavigationItem(
          icon: const Icon(MdiIcons.web),
          label: 'Searchfield Ui',
          route: '/searchfield_ui',
          items: [],
        ),
      ],
    ),

    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Example',
      route: '/http_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Http Form Example',
      route: '/http_form_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Example',
      route: '/example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Pos Another Example',
      route: '/pos_another_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Profile Ui Example',
      route: '/profile_ui_example',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Testxxx',
      route: '/testxxx',
      items: [],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Profile Ui',
      route: '/profile_ui',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr State Management',
      route: '/tr_state_management',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr Form',
      route: '/tr_form',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Counter',
      route: '/trsm_counter',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Loading',
      route: '/trsm_loading',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Visibility',
      route: '/trsm_visibility',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Navigation',
      route: '/trsm_navigation',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Enabled And Disabled',
      route: '/trsm_enabled_and_disabled',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Cart',
      route: '/trsm_cart',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Add And Delete From List',
      route: '/trsm_add_and_delete_from_list',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Loading For Http Request',
      route: '/trsm_loading_for_http_request',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Animation',
      route: '/trsm_animation',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Digital Clock',
      route: '/trsm_digital_clock',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Trsm Crud',
      route: '/trsm_crud',
      items: [],
    ),
          NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: 'Tr',
      route: '/tr',
      items: [],
    ),
          //@NAVIGATION_GENERATOR
  ];

  @override
  void initState() {
    super.initState();
    MainNavigationViewState.instance = this;
  }

  @override
  Widget build(BuildContext context) {
    var currentEndpoint = GoRouter.of(context).location;

    // if (Responsive.isMobile(context)) {
    //   expanded = false;
    // }

    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: Row(
          children: <Widget>[
            Builder(builder: (context) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: expanded ? sidebarWidth : 0,
                child: Theme(
                  data: getDefaultTheme().copyWith(
                    textTheme: TextTheme(
                      bodyText1: googleFont.copyWith(
                        color: drawerFontColor,
                      ),
                      bodyText2: googleFont.copyWith(
                        color: drawerFontColor,
                      ),
                    ),
                    iconTheme: IconThemeData(
                      color: drawerFontColor,
                    ),
                  ),
                  child: Drawer(
                    backgroundColor: drawerBackgroundColor,
                    child: ListView(
                      children: [
                        const Logo(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SideGroupTitle(
                          title: 'Main menu',
                        ),
                        ...List.generate(navigationItems.length, (index) {
                          return SideMenuItem(
                            item: navigationItems[index],
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              );
            }),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    child: Row(
                      children: [
                        if (!Responsive.isMobile(context)) ...[
                          IconButton(
                            onPressed: () {
                              expanded = expanded ? false : true;
                              setState(() {});
                            },
                            icon: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).drawerTheme.backgroundColor,
                              child: Icon(
                                expanded
                                    ? MdiIcons.chevronLeft
                                    : MdiIcons.chevronRight,
                                size: 18.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                        ],
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Theme changer',
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const ImageIcon(
                          NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3239/3239952.png',
                          ),
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.inbox_outlined,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 18.0,
                          backgroundImage: const NetworkImage(
                            'https://i.ibb.co/S32HNjD/no-image.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1.4,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: widget.child,
                        ),
                        if (false)
                          const VerticalDivider(thickness: 1, width: 1),
                        if (false)
                          Container(
                            width: 240.0,
                            height: MediaQuery.of(context).size.height,
                            padding: const EdgeInsets.all(12.0),
                            color: Colors.white,
                            child: Wrap(
                              runSpacing: 6.0,
                              spacing: 6.0,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    'Theme changer',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                TUIColorChanger(
                                  onChanged: (value) {
                                    appbarBackgroundColor = value;
                                    setState(() {});
                                  },
                                ),
                                TUIColorChanger(
                                  onChanged: (value) {
                                    scaffoldBackgroundColor = value;
                                    setState(() {});
                                  },
                                ),
                                const TUIFontChanger(),
                                TUIValueChanger(
                                  min: 0.0,
                                  max: 100.0,
                                  onChanged: (value) {
                                    cardBorderRadius = 100 * value;
                                    debugPrint(
                                      'cardBorderRadius: $cardBorderRadius',
                                    );
                                    setState(() {});
                                  },
                                ),
                                TUIValueChanger(
                                  min: 0.0,
                                  max: 50.0,
                                  onChanged: (value) {
                                    cardElevation = 50.0 * value;
                                    debugPrint(
                                      'cardBorderRadius: $cardElevation',
                                    );
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
