import 'package:example/shared/widget/navigation/basic_navigation.dart';
import 'package:flutter/material.dart';
import '../controller/example_controller.dart';

class ExampleView extends StatefulWidget {
  const ExampleView({Key? key}) : super(key: key);

  Widget build(context, ExampleController controller) {
    controller.view = this;

    return ExBasicNavigation(
      bottomNavigationBarItems: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: "Order",
          icon: Icon(
            Icons.list,
          ),
        ),
        BottomNavigationBarItem(
          label: "Favorite",
          icon: Icon(
            Icons.favorite,
          ),
        ),
        BottomNavigationBarItem(
          label: "Me",
          icon: Icon(
            Icons.person,
          ),
        ),
      ],
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.purple,
        ),
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
    // int selectedIndex = 0;

    // return DefaultTabController(
    //   length: 4,
    //   initialIndex: selectedIndex,
    //   child: Scaffold(
    //     body: IndexedStack(
    //       index: selectedIndex,
    //       children: [
    //         Container(
    //           color: Colors.green[100],
    //         ),
    //         Container(
    //           color: Colors.red[100],
    //         ),
    //         Container(
    //           color: Colors.purple[100],
    //         ),
    //         Container(
    //           color: Colors.blue[100],
    //         ),
    //       ],
    //     ),
    //     bottomNavigationBar: BottomNavigationBar(
    //       currentIndex: selectedIndex,
    //       selectedItemColor: Colors.grey[700],
    //       unselectedItemColor: Colors.grey[500],
    //       onTap: (index) {
    //         selectedIndex = index;
    //         // setState(() {});
    //       },
    //       items: const [
    //         BottomNavigationBarItem(
    //           label: "Home",
    //           icon: Icon(
    //             Icons.home,
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           label: "Order",
    //           icon: Icon(
    //             Icons.list,
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           label: "Favorite",
    //           icon: Icon(
    //             Icons.favorite,
    //           ),
    //         ),
    //         BottomNavigationBarItem(
    //           label: "Me",
    //           icon: Icon(
    //             Icons.person,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  @override
  State<ExampleView> createState() => ExampleController();
}
