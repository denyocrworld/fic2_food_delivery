import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //ALT+SHIFT+ENTER
              //text
              const Text("text"),
              const Text(
                "text",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const Text(
                "text",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              //text50
              const Text(
                "Angga",
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
              const Text(
                "Angga",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "text",
                //sty
                style: TextStyle(
                  //fs30
                  fontSize: 30.0,
                  //bold
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Hello Angga",
                //sty
                style: TextStyle(
                  //fs40
                  fontSize: 40.0,
                  //bold
                  fontWeight: FontWeight.bold,
                  //cblue
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Hello Monalisa",
                //sty
                style: GoogleFonts.bebasNeue(
                  //fs40
                  fontSize: 40.0,
                  //bold
                  fontWeight: FontWeight.bold,
                  //cBlue
                  color: Colors.red,
                ),
              ),
              const Divider(),
              //icon
              const Icon(
                Icons.developer_board,
                size: 128.0,
                //cOrange
                color: Colors.orange,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.dashboard,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  //sw20
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              //sh20
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  //sw20
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Order",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: const [
                  Icon(
                    Icons.developer_board,
                    size: 24.0,
                  ),
                  Text("text"),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: const [
                  Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                  Text("Add"),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                "https://akcdn.detik.net.id/community/media/visual/2023/01/14/cristiano-ronaldo-1_169.jpeg?w=700&q=90",
                width: 164.0,
                height: 164.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                "https://akcdn.detik.net.id/community/media/visual/2023/01/14/cristiano-ronaldo-1_169.jpeg?w=700&q=90",
                width: 164.0,
                height: 164.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  //decoration_image
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://awsimages.detik.net.id/community/media/visual/2022/11/25/cristiano-ronaldo-3_169.jpeg?w=1200",
                    ),
                    fit: BoxFit.cover,
                  ),
                  //radius
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Image.network(
                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                    width: 64.0,
                    height: 64.0,
                    fit: BoxFit.fill,
                  ),
                  //textb30
                  const Text(
                    "text",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //text30
                  const Text(
                    "text",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Image.network(
                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                    width: 64.0,
                    height: 64.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text("text"),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //circle_icon
              const CircleAvatar(
                //rd40
                radius: 40.0,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.add,
                  color: Colors.yellow,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //circle_image
              const CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text("Muhammad Angga"),
                ],
              ),

              /*
              1. Bikin text, isi dengan "Nama saya Muhammad Angga"
              */
              const Text("Nama saya Muhammad angga"),
              const Divider(),
              /*
              2. Bikin text "Hello Indonesia"
              Buat tulisanya jadi bold,
              Atur ukuran-nya menjadi 40
              */
              const Text(
                "Hello Indonesia",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              /*
              3. Atur warna teks "Muhammad" dan "Angga" menjadi tebal,
              ukurannya 30 dan warnanya merah.
              */
              Row(
                children: const [
                  Text("Nama saya "),
                  Text(
                    "Muhammad ",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "Angga",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const Divider(),
              /*
              4. Buatlah sebuah Row, isi dengan icon dan text
              */
              Row(
                children: const [
                  Icon(
                    Icons.developer_board,
                    size: 24.0,
                  ),
                  Text("text"),
                ],
              ),
              const Divider(),
              /*
              5. Buatlah sebuah Column, isi dengan icon dan text
              */
              Column(
                children: const [
                  Icon(
                    Icons.developer_board,
                    size: 24.0,
                  ),
                  Text("text"),
                ],
              ),
              const Divider(),
              /*
              6. Buatlah sebuah Column, isi dengan icon dan text.
              Atur iconnya menjadi:
              - Ubah iconnya menjadi Icons.dashboard
              - Atur ukurannya menjadi 40
              - Warnanya Merah
              Atur teks-nya menjadi:
              - Teks: "Dashboard"
              - Ukurannya 40
              - Warnanya, Putih
              */
              Column(
                children: const [
                  Icon(
                    Icons.dashboard,
                    size: 40.0,
                    color: Colors.red,
                  ),
                  Text(
                    "Dasboard",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Divider(),
              /*
              7. Buatlah sebuah image, dengan ukuran 200x100
              Isi dengan gambar pikacu
              Cari di google
              */
              Image.network(
                "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//83/MTA-4211363/bluelans_bluelans_cute_cartoon_pokemon_pikachu_c002_car_sticker_full02.jpg",
                width: 200.0,
                height: 100.0,
                fit: BoxFit.fill,
              ),
              const Divider(),
              /*
              8. Buatlah Column, isi dengan image dan text,
              image:
                - cari gambar son goku
                - ubah ukurannya jadi 200x100
              text
                - ganti teks-nya jadi "Son Goku"
                - Atur fontsize-nya jadi 30
                - Atur warnanya jadi kuning (cYellow)
              
              Lalu, beri jarak antara Gambar dan text sebanyak 12
              (sh12)
              */
              Column(
                children: [
                  Image.network(
                    "https://rukminim1.flixcart.com/image/416/416/ky90scw0/poster/m/6/4/medium-redcloud-goku-ultra-instinct-wall-poster-for-room-for-original-imagagedrzjxskyj.jpeg?q=70",
                    width: 200.0,
                    height: 100.0,
                    fit: BoxFit.fill,
                  ),
                  const Text(
                    "Son Goku",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
              const Divider(),
              /*
              9. Buatlah Row, isi dengan image dan text,
              image:
                - cari gambar Doraemon
                - ubah ukurannya jadi 120x120
              text
                - ganti teks-nya jadi "Doraemon"
                - Atur fontsize-nya jadi 30
                - Atur warnanya jadi kuning (cBlue)
              
              Lalu, beri jarak antara Gambar dan text sebanyak 20
              (sw20)
              */
              Row(
                children: [
                  Image.network(
                    "https://cdn.pixabay.com/photo/2019/10/16/09/09/doraemon-4553920_1280.png",
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Text(
                    "Doraemon",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              const Divider(),
              /*
              10. Buatlah sebuah Column, isi dengan circle_icon dan text
              */
              Column(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.add),
                  ),
                  Text("text"),
                ],
              ),
              const Divider(),
              /*
              11. Buatlah sebuah Row, isi dengan circle_image dan text
              ? Beri jarak sebanyak 12 (sw12)
              */
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text("text"),
                ],
              ),
              const Divider(),
              /*
              12. Buatlah sebuah Column, isi dengan Gambar, text dan text
              - Ubah gambarnya menjadi Messi
              - Ubah teks pertama jadi Lionel
              - Ubah teks kedua jadi Messi
              */
              Column(
                children: [
                  Image.network(
                    "https://cdn-asset.jawapos.com/wp-content/uploads/2021/08/Messi-AFP-560x373.jpg",
                    width: 64.0,
                    height: 64.0,
                    fit: BoxFit.fill,
                  ),
                  const Text("Lionel"),
                  const Text("Messi"),
                ],
              ),
              const Divider(),
              Container(
                height: 100.0,
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Image.network(
                      "https://files.kfcku.com/uploads/media/dummy/food/thumbnail/kfc-web_sbspicysour-2_t.png",
                      width: 64.0,
                      height: 64.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "kfc",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "31rb",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.add,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
