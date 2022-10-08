import 'package:fhe_template/core.dart';

import 'package:flutter/material.dart';

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

  List routes = [
    "/dashboard",
    "/events",
    "/blogs",
    "/users",
    "/form_ui",
    "/http_examples",
  ];

  List navigationItems = [
    NavigationItem(
      icon: Icons.dashboard,
      label: "Dashboard",
    ),
    NavigationItem(
      icon: MdiIcons.calendarStar,
      label: "Events",
    ),
    NavigationItem(
      icon: MdiIcons.post,
      label: "Blogs",
    ),
    NavigationItem(
      icon: Icons.people,
      label: "Users",
    ),
    NavigationItem(
      icon: MdiIcons.post,
      label: "Form UI",
    ),
    NavigationItem(
      icon: MdiIcons.web,
      label: "Http Examples",
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
    selectedIndex = !routes.contains(currentEndpoint)
        ? selectedIndex
        : routes.indexOf(currentEndpoint);

    if (FirebaseAuth.instance.currentUser == null) {
      return const LoginView();
    }

    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: Row(
          children: <Widget>[
            Column(
              children: [
                Expanded(
                  child: NavigationRail(
                    backgroundColor: Colors.white,
                    selectedIndex: selectedIndex,
                    groupAlignment: groupAligment,
                    onDestinationSelected: (int index) async {
                      if (index == navigationItems.length) {
                        doLogout();
                        return;
                      }
                      selectedIndex = index;
                      setState(() {});
                      var routeName = routes[index];
                      go(routeName);
                    },
                    labelType: NavigationRailLabelType.all,
                    destinations:
                        List.generate(navigationItems.length, (index) {
                      var item = navigationItems[index];
                      return NavigationRailDestination(
                        icon: Icon(item.icon),
                        label: Text(
                          item.label,
                          style: const TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                IconButton(
                  onPressed: () => doLogout(),
                  icon: const Icon(
                    Icons.logout,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Capek Ngoding",
                              style: GoogleFonts.bungee(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Write less do more",
                              style: GoogleFonts.bungee(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text("${me.name}"),
                        const SizedBox(
                          width: 4.0,
                        ),
                        CircleAvatar(
                          radius: 16.0,
                          backgroundImage: NetworkImage(
                            me.photo ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                    child: widget.child,
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
