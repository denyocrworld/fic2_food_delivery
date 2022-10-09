import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/main_navigation/widget/side_group_title.dart';
import 'package:fhe_template/module/main_navigation/widget/side_menu_item.dart';
import 'package:fhe_template/module/main_navigation/widget/top_bar.dart';
import 'package:fhe_template/shared/theme/value_changer.dart';
import 'package:fhe_template/shared/util/responsive/responsive.dart';

import 'package:flutter/material.dart';

import '../../../shared/theme/color_changer.dart';
import '../../../shared/theme/font_changer.dart';

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
      label: "Dashboard",
      route: "/dashboard",
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.calendarStar),
      label: "Events",
      route: "/events",
      trailingBuilder: () {
        return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("events").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return const Text("Error");
            if (snapshot.data == null) return Container();
            final data = snapshot.data!;
            return Card(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                child: Text(
                  "${data.docs.length}",
                  style: const TextStyle(
                    fontSize: 8.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        );
      },
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.post),
      label: "Blogs",
      route: "/blogs",
      trailingBuilder: () {
        return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("blogs").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return const Text("Error");
            if (snapshot.data == null) return Container();
            final data = snapshot.data!;
            return Card(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                child: Text(
                  "${data.docs.length}",
                  style: const TextStyle(
                    fontSize: 8.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        );
      },
    ),
    NavigationItem(
      icon: const Icon(Icons.people),
      label: "Users",
      route: "/users",
      trailingBuilder: () {
        return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("users").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return const Text("Error");
            if (snapshot.data == null) return Container();
            final data = snapshot.data!;
            return Card(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                child: Text(
                  "${data.docs.length}",
                  style: const TextStyle(
                    fontSize: 8.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        );
      },
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.post),
      label: "UI Kit",
      route: "",
      items: [
        NavigationItem(
          icon: const Icon(MdiIcons.post),
          label: "Form UI",
          route: "/form_ui",
          trailingBuilder: () {
            return const Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                child: Text(
                  "100+",
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    ),
    NavigationItem(
      icon: const Icon(MdiIcons.web),
      label: "Http Examples",
      route: "/http_examples",
      items: [],
    ),
  ];

  @override
  void initState() {
    super.initState();
    MainNavigationViewState.instance = this;
  }

  doLogout() async {
    await FirebaseAuth.instance.signOut();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var currentEndpoint = GoRouter.of(context).location;

    if (FirebaseAuth.instance.currentUser == null) {
      return const LoginView();
    }

    if (Responsive.isMobile(context)) {
      expanded = false;
    }

    return Theme(
      data: getDefaultTheme(),
      child: WillPopScope(
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
                        bodyText1: MainTheme.googleFont.copyWith(
                          color: MainTheme.drawerFontColor,
                        ),
                        bodyText2: MainTheme.googleFont.copyWith(
                          color: MainTheme.drawerFontColor,
                        ),
                      ),
                      iconTheme: IconThemeData(
                        color: MainTheme.drawerFontColor,
                      ),
                    ),
                    child: Drawer(
                      backgroundColor: MainTheme.drawerBackgroundColor,
                      child: ListView(
                        children: [
                          const Logo(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const SideGroupTitle(
                            title: "Main menu",
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
                                backgroundColor: Theme.of(context)
                                    .drawerTheme
                                    .backgroundColor,
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
                              "Dashboard",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Settings",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Theme changer",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const ImageIcon(
                            NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/3239/3239952.png",
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
                            backgroundImage: NetworkImage(
                              me.photo ??
                                  "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                          const VerticalDivider(thickness: 1, width: 1),
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
                                    "Theme changer",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                const TUIColorChanger(),
                                const TUIFontChanger(),
                                TUIValueChanger(
                                  min: 0.0,
                                  max: 100.0,
                                  onChanged: (value) {
                                    MainTheme.cardBorderRadius = 100 * value;
                                    debugPrint(
                                      "MainTheme.cardBorderRadius: ${MainTheme.cardBorderRadius}",
                                    );
                                    setState(() {});
                                  },
                                ),
                                TUIValueChanger(
                                  min: 0.0,
                                  max: 50.0,
                                  onChanged: (value) {
                                    MainTheme.cardElevation = 50.0 * value;
                                    debugPrint(
                                      "MainTheme.cardBorderRadius: ${MainTheme.cardElevation}",
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
      ),
    );
  }
}
