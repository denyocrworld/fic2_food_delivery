import 'package:example/core.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  doSave() async {}

  Widget build(context, DebugController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.dark().copyWith(
        cardTheme: CardTheme(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [],
            ),
          ),
        ),
        /*
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160.0,
              decoration: BoxDecoration(
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
                    decoration: BoxDecoration(
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
            SizedBox(
              height: 20.0,
            ),
            //alt+shift+v
            ListView.builder(
              itemCount: controller.products.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var item = controller.products[index];
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          margin: EdgeInsets.only(right: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(item["photo"]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            color: Colors.blue[400],
                          ),
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6.0),
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.green[800],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      12.0,
                                    ),
                                  ),
                                ),
                                child: Text(
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
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "8.1 km",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 4.0,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange[400],
                                    size: 16.0,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Bakery & Cake . Breakfast . Snack",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "€${item["price"]}",
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
            H3("State Management yang Enak"),
            Divider(),
            H4("Provider"),
            H4("Riverpod"),
            H4("Mobx"),
            H4("Getx"),
            H4("setState"),
            Divider(),
            H1("Firebase"),
            H2("Firebase"),
            H3("Firebase"),
            H4("Firebase"),
            H5("Firebase"),
            H6("Firebase"),
            ExCard(
              title: "Row Item Demo",
              children: [
                RowItem(
                  label: "Short Dresses",
                  value: "1500",
                  onPressed: () {
                    print("Test");
                  },
                ),
                RowItem(
                  label: "Mid-length Dresses",
                  value: "1500",
                ),
                RowItem(
                  label: "Bodycon",
                  value: "1500",
                ),
              ],
            ),
            SizedBox(
              height: 2.0,
            ),
            ExCard(
              title: "Hello",
              icon: Icons.dashboard,
              padding: EdgeInsets.all(10.0),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
              ],
              bottomActions: [
                Expanded(
                  child: SizedBox(
                    height: 50.0,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.save),
                      label: Text("Save"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: SizedBox(
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.save),
                            label: Text("Save"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
              children: [
                ExTextField(
                  id: "price",
                  label: "Price",
                  value: null,
                  symbol: "\$",
                ),
                Row(
                  children: [
                    Expanded(
                      child: ExTextField(
                        id: "first_name",
                        label: "First Name",
                        value: null,
                      ),
                    ),
                    Expanded(
                      child: ExTextField(
                        id: "last_name",
                        label: "Last Name",
                        value: null,
                      ),
                    ),
                  ],
                ),
                ExCombo(
                  id: "gender",
                  label: "Gender",
                  items: [
                    {
                      "label": "Male",
                      "value": "Male",
                    },
                    {
                      "label": "Female",
                      "value": "Female",
                    }
                  ],
                  value: "Female",
                ),
                ExCombo(
                  id: "gender",
                  label: "Gender",
                  items: [
                    {
                      "label": "Male",
                      "value": "Male",
                    },
                    {
                      "label": "Female",
                      "value": "Female",
                    }
                  ],
                  value: "Female",
                ),
                ExCheckBox(
                  id: "my_hobby",
                  label: "My Hobby",
                  items: [
                    {
                      "label": "Coding",
                      "value": "Coding",
                    },
                    {
                      "label": "Afk",
                      "value": "Afk",
                    },
                    {
                      "label": "E-Sport",
                      "value": "E-Sport",
                    }
                  ],
                  value: [
                    "Coding",
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(
                        Icons.developer_board,
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: FittedBox(
                        child: Icon(
                          Icons.developer_board,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 80.0,
                      height: 80.0,
                      child: FittedBox(
                        child: Icon(
                          Icons.developer_board,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120.0,
                      height: 120.0,
                      child: FittedBox(
                        child: Icon(
                          Icons.developer_board,
                        ),
                      ),
                    ),
                  ],
                ),
                ExRating(
                  id: "rating",
                  label: "Rating",
                  value: null,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ExCard(
                    title: "Hello",
                    children: [],
                  ),
                ),
                Expanded(
                  child: ExCard(
                    title: "Hello",
                    children: [],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
            ).xs,
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.save),
              label: Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
            ).w100.xl,
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.save),
              label: Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
            ).w100.xl,
          ],
        ).p20.scroll,
      */
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}

getText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
    ),
  );
}

H1(String text) => getText(text, 30);
H2(String text) => getText(text, 24);
H3(String text) => getText(text, 20);
H4(String text) => getText(text, 18);
H5(String text) => getText(text, 16);
H6(String text) => getText(text, 14);

extension ButtonExtension on Widget {
  Widget get xs {
    return SizedBox(
      height: 30.0,
      child: this,
    );
  }

  Widget get w100 {
    return SizedBox(
      width: MediaQuery.of(Get.currentContext).size.width,
      child: this,
    );
  }

  Widget get xl {
    return SizedBox(
      height: 50.0,
      child: this,
    );
  }

  Widget get scroll {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: this,
    );
  }

  Widget getPadding(double size) {
    return Padding(
      padding: EdgeInsets.all(size),
      child: this,
    );
  }

  Widget get p10 => getPadding(10);
  Widget get p20 => getPadding(20);
  Widget get p30 => getPadding(30);

  Widget get scale15 {
    return Transform.scale(
      scale: 1.5,
      child: this,
    );
  }

  Widget get scale2 {
    return Transform.scale(
      scale: 2.0,
      child: this,
    );
  }

  Widget get scale3 {
    return Transform.scale(
      scale: 2.0,
      child: this,
    );
  }
}
