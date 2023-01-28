import 'package:blur/blur.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomMenu extends StatefulWidget {
  final List menus;
  const CustomMenu({
    Key? key,
    required this.menus,
  }) : super(key: key);

  @override
  State<CustomMenu> createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  int selectedIndex = 0;
  updateIndex(newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Blur(
              blur: 3.5,
              blurColor: Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
              child: Container(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 56.0,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(widget.menus.length, (index) {
                    var item = widget.menus[index];
                    bool isSelected = selectedIndex == index;

                    if (item["circle_icon"] == true) {
                      return Expanded(
                        child: Container(
                          transform: Matrix4.translationValues(0.0, -20, 0),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundColor: const Color(0xff8e4dfc),
                                      child: Icon(
                                        item["icon"],
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      item["label"],
                                      style: const TextStyle(
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
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
                    return Expanded(
                      child: InkWell(
                        onTap: () => updateIndex(index),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              item["icon"],
                              size: 24.0,
                              color: isSelected
                                  ? Colors.pink
                                  : Colors.pink.withOpacity(0.4),
                            ),
                            Text(
                              item["label"],
                              style: TextStyle(
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold,
                                color: isSelected
                                    ? Colors.pink
                                    : Colors.pink.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
