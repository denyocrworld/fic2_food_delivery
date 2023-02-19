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

    /*
  ! Flutter 
  ! Materi : Common Widget + Layout 
  ? START 7:52 - Selesai
  Bantu Share! Thanks

  https://www.tiktok.com/@codingwithdeny/live
  */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Badge(
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
      //ALT+SHIFT+S
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
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
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 164.0,
              width: 164.0,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
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
                    color: Colors.black26,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).cardColor.withOpacity(0.6),
                        child: const Icon(
                          Icons.favorite,
                          size: 14.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black54,
                      padding: const EdgeInsets.all(12.0),
                      child: const Text(
                        "How to play guitar for beginner",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
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
                List items = [
                  {
                    'id': 1,
                    'category_name': 'Fashion',
                  },
                  {
                    'id': 2,
                    'category_name': 'Elektronik',
                  },
                  {
                    'id': 3,
                    'category_name': 'Kesehatan',
                  },
                  {
                    'id': 4,
                    'category_name': 'Kecantikan',
                  },
                  {
                    'id': 5,
                    'category_name': 'Olahraga',
                  },
                  {
                    'id': 6,
                    'category_name': 'Makanan',
                  },
                  {
                    'id': 7,
                    'category_name': 'Komputer',
                  },
                  {
                    'id': 8,
                    'category_name': 'Rumah Tangga',
                  },
                  {
                    'id': 9,
                    'category_name': 'Hobi',
                  },
                  {
                    'id': 10,
                    'category_name': 'Mainan',
                  },
                ];
                return Wrap(
                  children: List.generate(
                    items.length,
                    (index) {
                      var item = items[index];
                      bool selected = index == 0;
                      return Card(
                        color: selected ? Colors.orange : null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 4.0,
                          ),
                          child: Text(
                            "${item["category_name"]}",
                            style: const TextStyle(
                              fontSize: 11.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 100.0,
              child: Row(
                children: [
                  Container(
                    width: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 100.0,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 100.0,
                  color: Colors.brown,
                ),
                Container(
                  height: 100.0,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100.0,
                  color: Colors.orange,
                ),
              ],
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.red,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Hello World",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Icon(
              Icons.developer_board,
              size: 24.0,
            ),
            Image.network(
              "https://i.ibb.co/S32HNjD/no-image.jpg",
              width: 64.0,
              height: 64.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.ibb.co/PGv8ZzG/me.jpg",
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.add),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: const Text("John doe"),
                subtitle: const Text("john.doe@gmail.com"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
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
