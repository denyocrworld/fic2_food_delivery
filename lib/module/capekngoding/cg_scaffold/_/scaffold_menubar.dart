import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TemplateScaffoldMenubar extends StatelessWidget {
  const TemplateScaffoldMenubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //#GROUP_TEMPLATE scaffold
    //#TEMPLATE scaffold_tabbar_horizontal
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "Done",
              ),
            ],
          ),
          title: const Text('Order List'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MenuBar(
                children: <Widget>[
                  SubmenuButton(
                    leadingIcon: const Icon(
                      Icons.settings,
                    ),
                    menuChildren: <Widget>[
                      MenuItemButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.dark_mode_rounded),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Darkmode",
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MenuItemButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.info_rounded,
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "About",
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    child: Text(
                      "Settings",
                      style: GoogleFonts.montserrat(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.green[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
    //#END
  }
}
