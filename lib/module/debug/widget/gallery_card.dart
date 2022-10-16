import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "@codingwithdeny",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraint) {
                          List menus = [
                            {
                              "photo":
                                  "https://i.ibb.co/rcDzK4T/photo-1605538293913-13cfc720511e-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {
                                print("Test!");
                              },
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/TDyK1km/photo-1593807980339-b3fad3472c45-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/k3T7YBz/photo-1610320819784-58ccf5531a3f-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/0mS4w5t/photo-1576750168278-747aebbb30c3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/jDfJNM0/photo-1587897500679-a5962dc49c67-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/MVYZL7Q/photo-1581906848371-59968ebb7052-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/TmmxC61/photo-1605604904594-b640971ce3cb-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                            {
                              "photo":
                                  "https://i.ibb.co/ck5p8Rx/photo-1594235372071-6734d85514ea-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              "onTap": () {},
                            },
                          ];

                          var spacing = 2.0;
                          var rowCount = 3;

                          return Wrap(
                            runSpacing: spacing,
                            spacing: spacing,
                            children: List.generate(
                              menus.length,
                              (index) {
                                var item = menus[index];
                                var size = (constraint.biggest.width -
                                        (rowCount * spacing)) /
                                    rowCount;

                                return InkWell(
                                  onTap: () => item["onTap"](),
                                  child: Container(
                                    height: size,
                                    width: size,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          item["photo"],
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
