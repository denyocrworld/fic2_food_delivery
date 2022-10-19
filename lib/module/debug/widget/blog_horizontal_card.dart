import 'package:example/core.dart';
import 'package:flutter/material.dart';

class BlogHorizontalCard extends StatelessWidget {
  const BlogHorizontalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.0,
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
              "Recommended for you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          Builder(builder: (context) {
            List items = [
              {
                "date": DateTime(30, 08, 2023),
                "title": "Homes for Sale in NYC and Connecticut",
                "category": "Food",
                "content":
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                "cover_photo":
                    "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              },
              {
                "date": DateTime(2, 09, 2023),
                "title": "Are You There, Dad? It’s Me, Alice",
                "category": "Electronic",
                "content":
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                "cover_photo":
                    "https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              },
              {
                "date": DateTime(23, 09, 2023),
                "title": "The New Punk Look: Lacy and Colorful",
                "category": "Science",
                "content":
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                "cover_photo":
                    "https://plus.unsplash.com/premium_photo-1663014611296-1af1ab71aee2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              },
              {
                "date": DateTime(23, 09, 2023),
                "title": "Sunday Best in Harlem and Brooklyn",
                "category": "Health",
                "content":
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                "cover_photo":
                    "https://images.unsplash.com/photo-1505576399279-565b52d4ac71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
              }
            ];
            return Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    primary: true,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item = items[index];

                      return Container(
                        margin: const EdgeInsets.only(
                          bottom: 12.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 120.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(item["cover_photo"]),
                                  fit: BoxFit.cover,
                                ),
                                // borderRadius:BorderRadius.all(
                                //   Radius.circular(
                                //     16.0,
                                //   ),
                                // ),
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item["category"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        MdiIcons.bookmark,
                                        size: 24.0,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    item["title"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    item["content"],
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "22 Oct",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Icon(
                                        MdiIcons.chartBubble,
                                        color: Colors.grey[400],
                                      ),
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Icon(
                                        MdiIcons.bookmarkPlus,
                                        color: Colors.grey[400],
                                      ),
                                      Text(
                                        "62",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          }),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Read More",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
