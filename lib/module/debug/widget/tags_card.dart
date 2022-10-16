import 'package:flutter/material.dart';

class TagsCard extends StatelessWidget {
  const TagsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: 300.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Tags",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Builder(builder: (context) {
              List items = [
                "Fashion",
                "Footwear",
                "Bags",
                "Accessories",
                "Jewelry",
                "Eyewear",
                "Cosmetics",
                "Beauty",
                "Consumer Electronics",
                "Sporting goods",
                "Health & Wellness",
                "Pet supplies",
                "Children's goods",
              ];

              return Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12.0),
                    child: Wrap(
                      runSpacing: 10.0,
                      spacing: 10.0,
                      children: List.generate(
                        items.length,
                        (index) {
                          var item = items[index];
                          bool selected = index == 0;
                          Color? color;
                          Color? textColor;
                          if (selected) color = Colors.grey[900]!;
                          if (selected) textColor = Colors.white;

                          return Chip(
                            backgroundColor: color,
                            label: Text(
                              "$item",
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
