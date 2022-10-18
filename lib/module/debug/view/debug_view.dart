import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  doSave() async {}

  Widget build(context, DebugController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Youtube: Capek Ngoding",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 140.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
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
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: const BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                ),
                              ),
                              child: const Text(
                                "Avocado and Eeg Toast",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 11.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  child: SizedBox(
                    width: 160.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 160.0,
                          width: 160.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
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
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Roti bakar Cimanggis",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "8.2 km",
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
                              const SizedBox(
                                height: 6.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: 300.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
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
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.ibb.co/3pPYd14/freeban.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
              ),
              const AmazingCard(
                photo: "https://i.ibb.co/PGv8ZzG/me.jpg",
                productName: "SK Kretek 12",
                category: "Rokok",
              ),
              const SizedBox(
                height: 20.0,
              ),
              const AmazingCard(
                photo:
                    "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1009.jpg",
                productName: "Djarum Super 12",
                category: "Rokok",
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const BlogItemCard(),
              const SizedBox(
                height: 20.0,
              ),
              const BlogHorizontalCard(),
              const SizedBox(
                height: 20.0,
              ),
              const BlogCard(),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  WeatherCard(
                    color: Colors.orange[300]!,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  WeatherCard(
                    color: Colors.blue[300]!,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  WeatherCard(
                    color: Colors.green[300]!,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  WeatherCard(
                    color: Colors.purple[300]!,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const GalleryAlbumCard(),
              const SizedBox(
                height: 20.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ProfileCard(),
              const SizedBox(
                height: 20.0,
              ),
              const GalleryCard(),
              const SizedBox(
                height: 20.0,
              ),
              const TagsCard(),
              const SizedBox(
                height: 20.0,
              ),
              const EventCard(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
