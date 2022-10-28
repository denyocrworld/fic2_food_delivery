import 'package:example/core.dart';
import 'package:flutter/material.dart';

/*

Component
Form Control
Reuseable Widget

State Management
- setState        |
- Getx            | 
- Provider
- Mobx

- BLOC
- Cubit
- Redux

Q: Bikin aplikasi Flutter harus pakai library 
State Management gak?

A: Gak harus,
Karena basically fitur2 dasar state management sudah tersedia
di Flutter
.obs , ValueListener

Q: Apakah setState tidak cocok untuk aplikasi skala besar?
Q: Apakah Getx tidak cocok untuk aplikasi skala besar?
Q: Apakah Provider tidak cocok untuk aplikasi skala besar?
A: Sebenarnya, semua state management cocok2 aja utk
Aplikasi skala besar.
Karena state management gak terlalu berpengaruh utk skala aplikasi

Yang lebih berpengaruh adalah architecture.

DI = Dependecy Injection
Intinya untuk mengambil value dari halaman lain/class lain
*/
class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);
  Widget build(context, DebugController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
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
                height: 12.0,
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
                height: 12.0,
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  List menus = [
                    {
                      "icon":
                          "https://cdn-icons-png.flaticon.com/128/878/878052.png",
                      "label": "Burger",
                      "onTap": () async {
                        bool confirm = false;
                        await showDialog<void>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Confirm'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Are you sure you want to delete this item?'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("No"),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueGrey,
                                  ),
                                  onPressed: () {
                                    confirm = true;
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Yes"),
                                ),
                              ],
                            );
                          },
                        );

                        if (confirm) {
                          print("Confirmed!");
                        }
                      },
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
                                    color: Colors.white,
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
                height: 12.0,
              ),
              Card(
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
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                height: 288.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Debug View"),
      ),
      body: Row(
        children: [
          SizedBox(
            width: 200.0,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    controller.updateView(const DebugDashboardView());
                  },
                  child: const RowItem(
                    icon: Icons.dashboard,
                    label: "Dashboard",
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.updateView(const DebugOrderView());
                  },
                  child: const RowItem(
                    icon: Icons.list,
                    label: "Order",
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.updateView(const DebugProfileView());
                  },
                  child: const RowItem(
                    icon: Icons.person,
                    label: "Profile",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: controller.mainView,
          ),
          if (1 == 3)
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  controller: ScrollController(),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.white,
                    child: Column(
                      children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            style: TextStyle(
                                              color: Colors.blueGrey[900],
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
                        SizedBox(
                          height: 80.0 + 208,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                  child: SizedBox(
                                    width: 160.0,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                            color: Colors.blue[400],
                                          ),
                                          child: Stack(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                margin:
                                                    const EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  color: Colors.green[800],
                                                  borderRadius:
                                                      const BorderRadius.all(
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
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
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
