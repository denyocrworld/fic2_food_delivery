import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
- Layout
	Row
	Column
		SingleChildScrollView
		Expanded
	Wrap
	Stack
- ListView
- GridView
- MediaQuery
- LayoutBuilder
- OrientationBuilder
*/
class StaticButton {
  static Color color = Colors.red;
  static getButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {},
      child: const Text("Save"),
    );
  }
}

class TutorialDemoView extends StatefulWidget {
  const TutorialDemoView({Key? key}) : super(key: key);

  Widget build(context, TutorialDemoController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text("Restaurant"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Badge(
              backgroundColor: Colors.green,
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1567604514363-a87b6cb43149?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Near by offer",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Icon(
                        Icons.near_me,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        return Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          margin: const EdgeInsets.only(
                            right: 12.0,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1596432196113-62817b6cff8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                right: 4,
                                top: 4,
                                child: CircleAvatar(
                                  radius: 12.0,
                                  backgroundColor: Colors.orange,
                                  child: Icon(
                                    Icons.favorite,
                                    size: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  color: const Color(0xff43566B),
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "30%",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      Text(
                                        "discount",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      Spacer(),
                                      CircleAvatar(
                                        radius: 12.0,
                                        backgroundColor: Colors.green,
                                        child: Icon(
                                          Icons.shopping_bag,
                                          size: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "All restaurants",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Icon(
                        Icons.restaurant,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = {};
                      return Row(
                        children: [
                          Container(
                            height: 100.0,
                            width: 100.0,
                            margin: const EdgeInsets.only(
                              bottom: 12.0,
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1623217111909-43e6cf73a9b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
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
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Hapiness resturants",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.pin_drop,
                                      size: 12.0,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "Vastu estate canal road",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 1.0,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.blueGrey,
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 4.5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemSize: 12.0,
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    const Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  children: List.generate(
                                    4,
                                    (index) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6.0,
                                          vertical: 4.0,
                                        ),
                                        margin: const EdgeInsets.only(
                                          right: 4.0,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              6.0,
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          "Burger",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
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
  State<TutorialDemoView> createState() => TutorialDemoController();
}
