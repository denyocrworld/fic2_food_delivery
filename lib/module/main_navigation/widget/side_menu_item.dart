import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatefulWidget {
  const SideMenuItem({Key? key}) : super(key: key);

  @override
  State<SideMenuItem> createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem> {
  bool subMenuExpanded = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      bool isExpanded =
          constraint.maxWidth < MainNavigationViewState.instance.sidebarWidth
              ? false
              : true;

      if (isExpanded == false) return Container();
      return Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: InkWell(
          onTap: () {
            subMenuExpanded = subMenuExpanded ? false : true;
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ImageIcon(
                      const NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/1946/1946488.png",
                      ),
                      size: isExpanded ? 16.0 : 24.0,
                    ),
                    if (isExpanded) ...[
                      const SizedBox(
                        width: 12.0,
                      ),
                      const Expanded(
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: subMenuExpanded ? 1.6 : 0.0,
                        child: const Icon(
                          Icons.chevron_right,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ],
                ),
                if (isExpanded)
                  ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: 12.0,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        height: subMenuExpanded ? 40.0 : 0.0,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "Product",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        height: subMenuExpanded ? 40.0 : 0.0,
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "Customer",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                              Card(
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
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
