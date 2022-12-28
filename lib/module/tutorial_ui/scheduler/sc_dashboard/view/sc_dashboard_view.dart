import 'package:example/shared/theme/scheduler_theme.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class ScDashboardView extends StatefulWidget {
  const ScDashboardView({Key? key}) : super(key: key);

  Widget build(context, ScDashboardController controller) {
    controller.view = this;

    primaryColor = const Color(0xff222429);
    return Theme(
      data: getSchedulerTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ScDashboard"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: null,
                          decoration: InputDecoration.collapsed(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: "What are you craving?",
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                            ),
                            hoverColor: Colors.transparent,
                          ),
                          onFieldSubmitted: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 160.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1588072432904-843af37f03ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
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
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 0.0,
                        bottom: 0.0,
                        child: SizedBox(
                          width: 100.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "30%",
                                style: GoogleFonts.oswald(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Discount Only Valid for Today",
                                style: GoogleFonts.oswald(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                            "https://cdn-icons-png.flaticon.com/128/9203/9203182.png",
                        "label": "Meet",
                        "onTap": () {},
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/3214/3214781.png",
                        "label": "Class",
                        "onTap": () {},
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/3652/3652191.png",
                        "label": "Schedule",
                        "onTap": () => Get.to(const ScScheduleView()),
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/2098/2098402.png",
                        "label": "Task",
                        "onTap": () => Get.to(const ScTaskView()),
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/2995/2995620.png",
                        "label": "Students",
                        "onTap": () {},
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/3650/3650049.png",
                        "label": "Teachers",
                        "onTap": () {},
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/167/167707.png",
                        "label": "Schools",
                        "onTap": () {},
                      },
                      {
                        "icon":
                            "https://cdn-icons-png.flaticon.com/128/857/857455.png",
                        "label": "Sport(s)",
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
                                  Image.network(
                                    item["icon"],
                                    width: 30.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "${item["label"]}",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                      color: SchedulerTheme.textColor,
                                    ),
                                  ),
                                ],
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
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: 300.0,
                    child: Row(
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/dGcQ5bw/photo-1549692520-acc6669e2f0c-ixlib-rb-1-2.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "PRODUCTIVITY",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "3 days ago",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                const Text(
                                  "7 Skills of Highly Effective Programmers",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ScDashboardView> createState() => ScDashboardController();
}
