import 'package:example/module/tutorial_ui/taras/theme/tm_theme.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TmDashboardView extends StatefulWidget {
  const TmDashboardView({Key? key}) : super(key: key);

  Widget build(context, TmDashboardController controller) {
    controller.view = this;

    Widget getTitle(String title, String subTitle) {
      return Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Theme(
      data: getTMTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Statistics"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 24.0,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 20.0,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.drive_folder_upload_sharp,
                            size: 16.0,
                            color: Colors.blueGrey[300],
                          ),
                          label: Text(
                            "Ranking",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blueGrey[300],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedIndex == 0
                                ? Colors.white
                                : Colors.transparent,
                            shadowColor: controller.selectedIndex == 0
                                ? null
                                : Colors.transparent,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            controller.selectedIndex = 0;
                            controller.setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.browse_gallery,
                            size: 16.0,
                            color: Colors.blueGrey[300],
                          ),
                          label: Text(
                            "Activity",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.blueGrey[300],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedIndex == 1
                                ? Colors.white
                                : Colors.transparent,
                            shadowColor: controller.selectedIndex == 1
                                ? null
                                : Colors.transparent,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {
                            controller.selectedIndex = 1;
                            controller.setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                getTitle("Collections", "See all"),
                const SizedBox(
                  height: 20.0,
                ),
                //alt+shift+h
                SizedBox(
                  height: (MediaQuery.of(context).size.width * 0.44) * 1.6,
                  child: ListView.builder(
                    itemCount: controller.categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = controller.categoryList[index];
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        padding: const EdgeInsets.all(12.0),
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      item["photo"],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              item["category_name"],
                              style: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${item["item_count"]} items",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                getTitle("Top Artists", "More"),
                //alt+shift+v
                ListView.builder(
                  itemCount: controller.userList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = controller.userList[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item["photo"],
                          ),
                        ),
                        title: Text(
                          item["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(item["role"]),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${item["balance"]}",
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "ETH",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TmDashboardView> createState() => TmDashboardController();
}
