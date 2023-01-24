import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Junior Programmer
Jakarta
8 - 15

Daerah
4 - 8

Singapur
15 - 35++

US/UK
25 - 45++

Front End
- Bikin UI
- Consume API

Optional
- Bisa Testing
- Bisa deploy
- Paham architecture

Punya Portofolio
Q: Bang, gw belum pernah ngerjain project apapun
A: 
1. Coba bikin 5 UI Aplikasi Populer
Seperti Tokopedia, Tiktok, Shopee,
(Per aplikasi, 3-5 halaman aja )

2, Clone 5 UI dari Dribble, cari yang terbaik

3. Bikin 1 Aplikasi yang terhubung dengan API
(Movie API, Weather API, Forex API, Crypto API, dsb)

- 11 Portofolio


Portofolio

Skill
- Login n get Token
- CRUD
- Proteksi Endpoint
- Bikin Dokumentasi di Postman/Insomia/ThunderClient/Web

Product
- Ecommerce APi
- Movie Api
- Chat API (Biasanya pake Websocket)

*/
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
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
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration.collapsed(
                        filled: true,
                        fillColor: Colors.transparent,
                        hintText: "What are you craving?",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {
                        controller.search = value;
                        controller.setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    var productName =
                        item["product_name"].toString().toLowerCase();

                    if (!productName.contains(search)) {
                      return Container();
                    }
                  }

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text(item["product_name"]),
                      subtitle: Text("${item["price"]}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
