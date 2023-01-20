import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

// ! Kelas Online Dart/Flutter
// ? https://capekngoding.com

//5 Prinsip dasar OOP
// 1. Abstraction: Abstraksi adalah proses menyederhanakan kompleksitas dengan menyorot informasi yang relevan dan mengabaikan informasi yang tidak relevan.

// 2. Encapsulation: Enkapsulasi adalah proses menyembunyikan detail implementasi dari suatu objek dan menyediakan antarmuka yang dapat digunakan untuk mengakses objek tersebut.

// 3. Inheritance: Pewarisan adalah proses membuat kelas baru dengan menggunakan properti dan metode dari kelas yang sudah ada.

// 4. Polymorphism: Polimorfisme adalah proses menggunakan satu nama untuk mengakses berbagai bentuk data.

// 5. Interfaces: Antarmuka adalah kumpulan metode yang didefinisikan, tetapi tidak diterapkan. Metode ini harus diterapkan oleh kelas yang mengimplementasikannya.

//class, property, method
class Goku {
  String baju = "Merah";
  String bangsa = "Saiyan";
  int hp = 10000;
  int exp = 20000;
  terbang() {}
  doKamehameHaa() {}
}

//Inheritance
class Gohan extends Goku {
  final int _power = 3000;
  get power {
    return _power;
  }

  doMasenko() {}
}

void main() {
  Gohan gohan = Gohan();
  gohan.doKamehameHaa();

  Goku goku = Goku();
  // goku.doMasenko();
  gohan.doKamehameHaa();
}

/*
Car
Property:
Merek: BMW
Ban: Ban XXX

Method:
ngebut()
ngerem()
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(const TutorialLoginView());
                },
                child: Container(
                  height: 100.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
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
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const TutorialLoginView()),
                  // );

                  Get.to(const TutorialLoginView());
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Builder(
          builder: (context) {
            List<Marker> allMarkers = [
              Marker(
                point: LatLng(
                  -6.1754234,
                  106.827224,
                ),
                builder: (context) => const Icon(
                  Icons.pin_drop,
                  color: Colors.red,
                  size: 24,
                ),
              ),
            ];
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(
                    -6.1754234,
                    106.827224,
                  ),
                  zoom: 16,
                  interactiveFlags:
                      InteractiveFlag.all - InteractiveFlag.rotate,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                  ),
                  MarkerLayer(
                    markers: allMarkers,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text("Cart"),
        actions: const [],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text(
              "Total: ${controller.total}",
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
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
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
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
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] ??= 0;

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    var productName =
                        item["product_name"].toString().toLowerCase();

                    if (!productName.contains(search)) {
                      return Container();
                    }
                  }

                  return AnimatedRotation(
                    duration: const Duration(milliseconds: 3300),
                    turns: (item["qty"] > 0 ? (360.0 * 10) : 0.0) / 360,
                    child: AnimatedScale(
                      duration: const Duration(milliseconds: 900),
                      scale: item["qty"] > 0 ? 1.0 : 0.9,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        decoration: BoxDecoration(
                          color: item["qty"] > 0 ? Colors.red : Colors.blue,
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["photo"],
                            ),
                          ),
                          title: Text("${item["product_name"]}"),
                          subtitle: Text("${item["price"]} USD"),
                          trailing: SizedBox(
                            width: 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  radius: 12.0,
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        item["qty"]--;
                                        controller.setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 9.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${item["qty"]}",
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  radius: 12.0,
                                  child: Center(
                                    child: IconButton(
                                      onPressed: () {
                                        item["qty"]++;
                                        controller.setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 9.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text("Add Product"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {},
              child: const Text("Save"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          onPressed: () {},
          child: const Text("Save"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        hint: "Your photo",
                        validator: Validator.required,
                        value: null,
                        onChanged: (value) {},
                      ),
                      QTextField(
                        label: "Product Name",
                        validator: Validator.required,
                        onChanged: (value) {},
                      ),
                      QNumberField(
                        label: "Price",
                        validator: Validator.required,
                        value: "24",
                        onChanged: (value) {},
                      ),
                      QMemoField(
                        label: "Description",
                        validator: Validator.required,
                        value: "-",
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
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
                      "https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
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
                          "https://cdn-icons-png.flaticon.com/128/878/878052.png",
                      "label": "Burger",
                      "onTap": () {},
                    },
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/3595/3595455.png",
                      "label": "Pizza",
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
                height: 2.0,
              ),
              const Text(
                "New products",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              SizedBox(
                height: 80.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160,
                      height: 160,
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
              const Text(
                "Favorite Product",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
