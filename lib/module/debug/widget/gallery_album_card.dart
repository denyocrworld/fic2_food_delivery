import 'package:flutter/material.dart';

class GalleryAlbumCard extends StatefulWidget {
  const GalleryAlbumCard({
    Key? key,
  }) : super(key: key);

  @override
  State<GalleryAlbumCard> createState() => _GalleryAlbumCardState();
}

class _GalleryAlbumCardState extends State<GalleryAlbumCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    "Album",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
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
              ];

              var spacing = 1.0;
              var rowCount = 2;

              return Wrap(
                runSpacing: spacing,
                spacing: spacing,
                children: List.generate(
                  menus.length,
                  (index) {
                    var item = menus[index];
                    var size =
                        (constraint.biggest.width - (rowCount * spacing)) /
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
          Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "View All",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
