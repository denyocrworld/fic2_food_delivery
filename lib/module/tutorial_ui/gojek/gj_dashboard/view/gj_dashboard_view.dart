import 'package:flutter/material.dart';
import 'package:example/core.dart';

class GjDashboardView extends StatefulWidget {
  const GjDashboardView({Key? key}) : super(key: key);

  Widget build(context, GjDashboardController controller) {
    controller.view = this;

    List menuList = [
      {
        "icon": Icons.star,
        "color": CurrentTheme.mainColor,
        "header": "Point",
        "balance": "12.300",
        "info": "Tap for history",
      },
      {
        "icon": Icons.wallet,
        "color": CurrentTheme.buttonColor,
        "header": "Balance",
        "balance": "Rp93.400",
        "info": "Tap for history",
      }
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: GoogleFonts.roboto(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 36.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: const Center(
                    child: TextField(
                      style: TextStyle(
                        color: CurrentTheme.textColor,
                        fontSize: 12.0,
                      ),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 8.0),
                        hintText: "Find services, food or places",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: CurrentTheme.mainColor,
                ),
              ),
            ],
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: CurrentTheme.cardColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 60.0,
                        width: 4.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => controller.updateIndex(0),
                              child: Container(
                                height: 12.0,
                                width: 3.0,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(
                                      controller.selectedIndex == 0
                                          ? 1.0
                                          : 0.4),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            InkWell(
                              onTap: () => controller.updateIndex(1),
                              child: Container(
                                height: 12.0,
                                width: 3.0,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(
                                      controller.selectedIndex == 1
                                          ? 1.0
                                          : 0.4),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      SizedBox(
                        // color: Colors.red,
                        width: Get.width / 2.6,
                        height: 80.0,
                        child: Scrollbar(
                          thickness: 0.0,
                          child: ListView.builder(
                            controller: controller.scrollController,
                            itemCount: 2,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var item = menuList[index];
                              return LayoutBuilder(
                                  builder: (context, constraint) {
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        controller.selectedIndex == index
                                            ? 0.0
                                            : 6.0,
                                  ),
                                  margin: EdgeInsets.only(
                                    bottom: index == 1 ? 8.0 : 0.0,
                                  ),
                                  child: Card(
                                    color: Colors.white.withOpacity(
                                        controller.selectedIndex == index
                                            ? 1.0
                                            : 0.6),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 8.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                item["icon"],
                                                size: 16.0,
                                                color: item["color"],
                                              ),
                                              const SizedBox(
                                                width: 2.0,
                                              ),
                                              Text(
                                                item["header"],
                                                style: GoogleFonts.amiko(
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "${item["balance"]}",
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["info"],
                                            style: const TextStyle(
                                              fontSize: 10.0,
                                              color: CurrentTheme.mainColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.payments,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Pay",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.add_box,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Topup",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.rocket,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  List menus = [
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/878/878052.png",
                      "label": "Burger",
                      "onTap": () {},
                    },
                    {
                      "icon": "https://i.ibb.co/NmChyvn/1048361.png",
                      "label": "Car",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/2718/2718224.png",
                      "label": "Noodles",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/8060/8060549.png",
                      "label": "Meat",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/454/454570.png",
                      "label": "Soup",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/2965/2965567.png",
                      "label": "Dessert",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/2769/2769608.png",
                      "label": "Drink",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/1037/1037855.png",
                      "label": "Others",
                      "onTap": () {},
                    },
                  ];

                  return Wrap(
                    children: List.generate(
                      menus.length,
                      (index) {
                        var item = menus[index];

                        var size = constraint.biggest.width / 4;

                        return SizedBox(
                          width: size,
                          height: size,
                          child: FittedBox(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.blueGrey,
                                animationDuration:
                                    const Duration(milliseconds: 1000),
                                backgroundColor: Colors.transparent,
                                splashFactory: InkSplash.splashFactory,
                                shadowColor: Colors.transparent,
                                elevation: 0.0,
                              ),
                              onPressed: () => item["onTap"](),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50.0,
                                    width: 50.0,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 42.0,
                                          height: 42.0,
                                          decoration: BoxDecoration(
                                            color: index % 2 == 0
                                                ? Colors.green[100]
                                                : Colors.red[100],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Image.network(
                                            item["icon"],
                                            width: 36.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "${item["label"]}",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: CurrentTheme.textColor
                                          .withOpacity(0.8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.workspace_premium,
                                  color: Colors.purple,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "Gold membership",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Our new loyality program",
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CurrentTheme.mainColor,
                            shape: const StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: const Text("Join for free"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Quick actions",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //alt+shift+h
              SizedBox(
                height: 40.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "${index + 1} vouchers expiring soon",
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const CircleAvatar(
                              radius: 12.0,
                              backgroundColor: CurrentTheme.mainColor,
                              child: Icon(
                                Icons.discount_rounded,
                                size: 8.0,
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
          ),
        ),
      ),
    );
  }

  @override
  State<GjDashboardView> createState() => GjDashboardController();
}
