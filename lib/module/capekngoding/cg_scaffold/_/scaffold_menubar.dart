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
          title: const Text('Profile'),
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
                              icon: const Icon(Icons.question_mark_outlined),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Text(
                              "FAQ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
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
                            const Text(
                              "About",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    child: const Text(
                      "Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [],
            ),
          ),
        ),
      ),
    );
    //#END
  }
}
