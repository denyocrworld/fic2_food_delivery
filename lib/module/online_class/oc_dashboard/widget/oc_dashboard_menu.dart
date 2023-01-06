// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:example/core.dart';
import 'package:flutter/material.dart';

class OcDashboardMenu extends StatelessWidget {
  final String? title;
  final List<Map> menuList;
  const OcDashboardMenu({
    Key? key,
    required this.menuList,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var size = (constraint.biggest.width - 48) / 3;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
          ],
          Wrap(
            children: List.generate(
              menuList.length,
              (index) {
                var item = menuList[index];
                bool disabled = item["tag"] == "Coming Soon";
                bool isOnlyMember = item["tag"] == "Member Only";

                return InkWell(
                  onTap: () {
                    if (item["action"] != null) {
                      item["action"]();
                      return;
                    }
                    print("updateView to ${item["page"]}");
                    CgMainController.instance.updateView(item["page"]);
                  },
                  child: AbsorbPointer(
                    child: Stack(
                      children: [
                        Container(
                          width: size,
                          height: size,
                          margin: const EdgeInsets.all(4.0),
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 12,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(item["icon"]),
                                  color: disabled ? Colors.grey : item["color"],
                                  iconSize: 24.0,
                                  onPressed: () {},
                                ),
                                Expanded(
                                  child: Text(
                                    '${item["label"]}',
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        if (item["tag"] != null)
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Card(
                              color: isOnlyMember ? Colors.red : Colors.orange,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 4.0,
                                ),
                                child: Text(
                                  item["tag"],
                                  style: const TextStyle(
                                    fontSize: 6.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      );
    });
  }
}