import 'package:example/core.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  doSave() async {}

  Widget build(context, DebugController controller) {
    controller.view = this;

    var size = MediaQuery.of(context).size;

/*
Semua WIDGET
di FLUTTER
itu bisa di klik
dengan dibungkus dengan InkWell atau GestureDetector
*/
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
          title: const Text("Debug View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    var item = {};
                    return Container(
                      width: 300.0,
                      decoration: const BoxDecoration(
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
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 160.0,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.ibb.co/JpdK5ch/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Pepperoni Pizza",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 10.0,
                                        child: Icon(
                                          MdiIcons.fire,
                                          size: 10.0,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.0,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        radius: 10.0,
                                        child: Icon(
                                          Icons.thumb_up,
                                          size: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  const Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "256 Cal",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      Text(
                                        "P/F/C: 12/10/31",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      Text(
                                        "53.8 °C",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "€9",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 6.0,
                                      ),
                                      const Text(
                                        "€12",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const Spacer(),
                                      Transform.scale(
                                        scale: 0.8,
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton.icon(
                                          icon: const Icon(MdiIcons.cart),
                                          label: const Text("Add to Cart"),
                                          style: ElevatedButton.styleFrom(),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
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
