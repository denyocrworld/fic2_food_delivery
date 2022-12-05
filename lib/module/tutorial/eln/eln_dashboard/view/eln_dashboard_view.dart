import 'package:flutter/material.dart';
import 'package:example/core.dart';

class ElnDashboardView extends StatefulWidget {
  const ElnDashboardView({Key? key}) : super(key: key);

  Widget getHeader({
    required String title,
    required String subTitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 4.0,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            width: 2.0,
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget build(context, ElnDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome"),
            Row(
              children: const [
                Text(
                  "Harry!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Icon(
                  Icons.thumb_up,
                  size: 16.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 24.0,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 164.0,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.handshake_outlined,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 2.0,
                              ),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                                color: Colors.white,
                              ),
                              child: const Text("01"),
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 2.0,
                              ),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                                color: Colors.white,
                              ),
                              child: const Text("08"),
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                                horizontal: 2.0,
                              ),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                                color: Colors.white,
                              ),
                              child: const Text("33"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const Text(
                      "Math class",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                      "Starting soon",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Stack(
                              children: const [
                                CircleAvatar(
                                  radius: 14.0,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 12.0,
                                    backgroundImage: NetworkImage(
                                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16.0,
                                  child: CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 12.0,
                                      backgroundImage: NetworkImage(
                                        "https://i.ibb.co/tHF27h7/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 32.0,
                                  child: CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 12.0,
                                      backgroundImage: NetworkImage(
                                        "https://i.ibb.co/YtTnFSs/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 48.0,
                                  child: CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 12.0,
                                      backgroundColor: Colors.blueGrey,
                                      child: Text(
                                        "12+",
                                        style: TextStyle(
                                          fontSize: 8.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[600],
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(64.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Join class"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              getHeader(
                title: "Todays",
                subTitle: "Class",
              ),
              //ALT+SHIFT+H
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120.0,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1580894732930-0babd100d356?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
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
                                    child: Card(
                                      child: Wrap(
                                        children: const [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.red,
                                            size: 10.0,
                                          ),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            "Live",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.red,
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
                              height: 12.0,
                            ),
                            const Text(
                              "Biology",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 16.0,
                                  color: Colors.grey[700],
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "Time season",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                const Text(
                                  "1:00h",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //ALT+SHIFT+V
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = {};
                  return Container(
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Colors.blueGrey,
                          child: Icon(Icons.check_box_rounded),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Test Exam",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Let's check your preparation",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        const Icon(
                          Icons.chevron_right,
                          size: 30.0,
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 400.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ElnDashboardView> createState() => ElnDashboardController();
}
