import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    /*
    * Cara ngebut bikin Bottombar Navigation di Flutter?
    ? Wah, MAMA Mertua Bangga gara2 ini!!
    */

    /*
   TODO: Implement this @ controller
   int selectedIndex = 0;
   updateIndex(int newIndex) {
   selectedIndex = newIndex;
   setState(() {});
   }
   */

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  var item = {};
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

    int counter = 2;
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const NetworkImage(
                    "https://i.ibb.co/QrTHd59/woman.jpg",
                  ),
                ),
                title: const Text("Jessica Doe"),
                subtitle: const Text("Programmer"),
              ),
            ),
            //--
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const NetworkImage(
                    "https://i.ibb.co/QrTHd59/woman.jpg",
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text("Jessica Doe")],
                ),
                subtitle: const Text("Programmer"),
              ),
            ),
            Text(
              "\$25 $counter",
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
            Container(
              color: Colors.red[100],
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        var item = {};
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  margin: const EdgeInsets.only(right: 10.0),
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    color: Colors.blue[400],
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(6.0),
                                        margin: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.green[800],
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              12.0,
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          "PROMO",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Roti bakar Cimanggis",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "8.1 km",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4.0,
                                          ),
                                          const Icon(
                                            Icons.circle,
                                            size: 4.0,
                                          ),
                                          const SizedBox(
                                            width: 4.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange[400],
                                            size: 16.0,
                                          ),
                                          const Text(
                                            "4.8",
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
                                        "Bakery & Cake . Breakfast . Snack",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      const Text(
                                        "€24",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
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
            Container(
              color: Colors.green[100],
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        var item = {};
                        return Card(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue[100],
            ),
            Container(
              color: Colors.purple[100],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey[400],
          onTap: (newIndex) => controller.updateIndex(newIndex),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "User",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
