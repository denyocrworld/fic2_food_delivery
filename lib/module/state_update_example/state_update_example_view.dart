import 'package:flutter/material.dart';

class StateUpdateExampleView extends StatefulWidget {
  const StateUpdateExampleView({Key? key}) : super(key: key);

  @override
  State<StateUpdateExampleView> createState() => _StateUpdateExampleViewState();
}

class _StateUpdateExampleViewState extends State<StateUpdateExampleView> {
  // List<Map<String, dynamic>> items = [
  //   {
  //     "label": "Female",
  //     "value": "Female",
  //     // "checked": true,
  //   },
  //   {
  //     "label": "Male",
  //     "value": "Male",
  //   }
  // ];

  List<Map<String, dynamic>> products = [
    {
      "photo":
          "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Frenzy Pizza",
      "price": 25,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Beef Burger",
      "price": 22,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Seperait",
      "price": 33,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "product_name": "Fried Rice",
      "price": 31,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://i.ibb.co/mHCx9Nj/photo-1517487881594-2787fef5ebf7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "product_name": "Terrano Milk",
      "price": 32,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "product_name": "Fried Chicken",
      "price": 49,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1525385133512-2f3bdd039054?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
      "product_name": "Mango Juice",
      "price": 62,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1600271886742-f049cd451bba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Orange Juice",
      "price": 56,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1604085792782-8d92f276d7d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
      "product_name": "Avocado Juice",
      "price": 56,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1622240506921-042a4e71c172?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Puncak Coffe",
      "price": 56,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1594631252845-29fc4cc8cde9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Silvana Tea",
      "price": 56,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "photo":
          "https://images.unsplash.com/photo-1576092768241-dec231879fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Paradox Tea",
      "price": 56,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // QRadioField(
            //   id: "gender",
            //   label: "Gender",
            //   validator: Validator.atLeastOneitem,
            //   items: [
            //     {
            //       "label": "Female",
            //       "value": "Female",
            //     },
            //     {
            //       "label": "Male",
            //       "value": "Male",
            //     }
            //   ],
            // ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    Text(
                      "Hello world",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2.0,
            ),
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
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  var item = products[index];
                  item["qty"] = item["qty"] ?? 0;

                  return Card(
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
                                    setState(() {});
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
                                    setState(() {});
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
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
