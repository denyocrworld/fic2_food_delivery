import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';


class GegeGeminkDashboardUiView extends StatefulWidget {
  const GegeGeminkDashboardUiView({Key? key}) : super(key: key);

  Widget build(context, GegeGeminkDashboardUiController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff1c1e1f),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff2b2e2f),
              child: Icon(Icons.search),
            ),
          ),
          title: Column(
            children: const [
              Text(
                "Gege",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              Text(
                "Gemink",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*
                    TODO: Implement this @ controller
                    int currentIndex = 0;
                    final CarouselController carouselController = CarouselController();
                    */
                    Builder(builder: (context) {
                      List images = [
                        "https://images.unsplash.com/photo-1593305841991-05c297ba4575?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=757&q=80",
                        "https://images.unsplash.com/photo-1552820728-8b83bb6b773f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        "https://images.unsplash.com/photo-1560419015-7c427e8ae5ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        "https://images.unsplash.com/photo-1616588589676-62b3bd4ff6d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
                      ];

                      return Column(
                        children: [
                          CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              height: 160.0,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
                              onPageChanged: (index, reason) {
                                controller.currentIndex = index;
                                controller.setState(() {});
                              },
                            ),
                            items: images.map((imageUrl) {
                              // return Container(
                              //   height: 160.0,
                              //   decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //       image: NetworkImage(
                              //         "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                              //       ),
                              //       fit: BoxFit.cover,
                              //     ),
                              //     borderRadius: BorderRadius.all(
                              //       Radius.circular(
                              //         16.0,
                              //       ),
                              //     ),
                              //   ),
                              // );
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6.0),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          imageUrl,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: images.asMap().entries.map((entry) {
                              bool isSelected =
                                  controller.currentIndex == entry.key;
                              return GestureDetector(
                                onTap: () => controller.carouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  width: isSelected ? 40 : 6.0,
                                  height: 6.0,
                                  margin: const EdgeInsets.only(
                                    right: 6.0,
                                    top: 12.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.white
                                        : const Color(0xff3c3e40),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Trending",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0xff67696a),
                                      ),
                                    ),
                                    Text(
                                      "#PlayWithvalorant",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "View all",
                                style: TextStyle(
                                  color: Color(0xff874753),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          //ALT+SHIFT+H
                          Container(
                            height: 46.0,
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Stack(
                              children: [
                                ListView.builder(
                                  itemCount: controller.categoryList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    var item = controller.categoryList[index];

                                    bool isSelected =
                                        controller.selectedCategoryIndex ==
                                            index;
                                    return InkWell(
                                      onTap: () =>
                                          controller.updateCategoryIndex(index),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 8.0,
                                        ),
                                        margin: const EdgeInsets.only(
                                          right: 12.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xff984454)
                                              .withOpacity(
                                                  isSelected ? 0.4 : 0.0),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              16.0,
                                            ),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "$item",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold,
                                              color: isSelected
                                                  ? const Color(0xff984454)
                                                  : const Color(0xff6a6c6e),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Positioned(
                                  right: 0,
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor: Colors.grey[800],
                                    child: const Icon(
                                      MdiIcons.filter,
                                      color: Colors.white,
                                      size: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var item = {};
                              return Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 160.0,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://images.unsplash.com/photo-1600861194942-f883de0dfe96?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            16.0,
                                          ),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: 6,
                                            top: 6,
                                            child: Card(
                                              color: Colors.pink[800],
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 4.0,
                                                  horizontal: 8.0,
                                                ),
                                                child: Text(
                                                  "Live",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            "https://images.unsplash.com/photo-1535223289827-42f1e9919769?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Ethos",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                      color: Color(0xffdcbd78),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 2.0,
                                                  ),
                                                  Image.network(
                                                    "https://cdn-icons-png.flaticon.com/512/5253/5253968.png",
                                                    width: 12.0,
                                                    height: 12.0,
                                                  ),
                                                  const SizedBox(
                                                    width: 2.0,
                                                  ),
                                                  Card(
                                                    color:
                                                        const Color(0xfff75a77),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 8.0,
                                                        vertical: 4.0,
                                                      ),
                                                      child: Text(
                                                        "Valorant",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 6.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                "Tips mudah bermain PUBG!",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 200.0,
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: Stack(
                children: [
                  const CustomMenu(
                    menus: [
                      {
                        "icon": Icons.dashboard,
                        "label": "Home",
                      },
                      {
                        "icon": MdiIcons.trendingUp,
                        "label": "Trending",
                      },
                      {
                        "icon": MdiIcons.video,
                        "label": "Streaming",
                        "circle_icon": true,
                      },
                      {
                        "icon": MdiIcons.chartBubble,
                        "label": "Chat",
                      },
                      {
                        "icon": Icons.person,
                        "label": "Profile",
                      },
                    ],
                  ),
                  if (1 == 2)
                    Container(
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
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: const [
                                              Icon(
                                                Icons.dashboard,
                                                size: 24.0,
                                                color: Colors.black,
                                              ),
                                              Text(
                                                "Home",
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              Icon(
                                                MdiIcons.trendingUp,
                                                size: 24.0,
                                                color: Colors.grey[600],
                                              ),
                                              Text(
                                                "Trending",
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -20, 0),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                CircleAvatar(
                                                  radius: 20.0,
                                                  backgroundColor:
                                                      Color(0xff8e4dfc),
                                                  child: Icon(
                                                    MdiIcons.video,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Text(
                                                  "Streaming",
                                                  style: TextStyle(
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              Icon(
                                                MdiIcons.chartBubble,
                                                size: 24.0,
                                                color: Colors.grey[300],
                                              ),
                                              Text(
                                                "Chat",
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[300],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                size: 24.0,
                                                color: Colors.grey[300],
                                              ),
                                              Text(
                                                "Profile",
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[300],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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

  @override
  State<GegeGeminkDashboardUiView> createState() =>
      GegeGeminkDashboardUiController();
}
