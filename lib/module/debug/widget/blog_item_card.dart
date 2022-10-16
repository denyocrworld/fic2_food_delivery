import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class BlogItemCard extends StatefulWidget {
  const BlogItemCard({
    Key? key,
  }) : super(key: key);

  @override
  State<BlogItemCard> createState() => _BlogItemCardState();
}

class _BlogItemCardState extends State<BlogItemCard> {
  //belajar flutter enaknya dimana?
  /*
  belajar Dart dulu gan, dart basic ya, boleh dimana aja referensiinya:
  youtube, dokumentasi
  - Variable
  - IF
  - Array
  - Looping
  - Function
  - Basic OOP (Minimal bisa bkin class, method dan variabel-nya dan tau cara pake-nya)

  Habis itu belajar Flutter Basic
  - Common Widget
    Image, Icon, Text, Container, Scaffold

  - Layout
    Row, Column, Wrap, Stack, SinglechildScrollView

  - State Management
    - coba bikin loading aja dulu
    - coba bikin counter
  
  - Perbanyak latihan | |

  Yes, vs code!
  */
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        child: SizedBox(
          width: 240.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240.0,
                width: 240.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://i.ibb.co/DGF0BJ3/photo-1485735662814-c4f66e49dbae-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  color: Colors.blue[400],
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            4.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Coolest campsite ever",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    const Text(
                      "Camping is commonplace in Estes Park. Here are clear and snowcapped mountains.",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // nanti ini ada snippet-nya
                            // di youtube gak di share
                            const Text(
                              "By Roy Marteen",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10 Aug",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                Icon(
                                  MdiIcons.chartBubble,
                                  color: Colors.grey[400],
                                ),
                                Text(
                                  "343",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                Icon(
                                  MdiIcons.bookmarkPlus,
                                  color: Colors.grey[400],
                                ),
                                Text(
                                  "830",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
