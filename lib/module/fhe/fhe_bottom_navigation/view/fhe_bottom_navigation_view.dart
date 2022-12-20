import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fhe_bottom_navigation_controller.dart';

//#GROUP_TEMPLATE navigation_in_scaffold
class FheBottomNavigationView extends StatefulWidget {
  const FheBottomNavigationView({Key? key}) : super(key: key);

  Widget build(context, FheBottomNavigationController controller) {
    controller.view = this;

    /*
    Add this code in your controller:
    int selectedIndex = 0;
    updateIndex(int newIndex) {
      selectedIndex = newIndex;
      setState((){});
    }
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  //#TEMPLATE navigation_basic
                  /*
                  Add this code in your controller:
                  int selectedIndex = 0;
                  updateIndex(int newIndex) {
                    selectedIndex = newIndex;
                    setState((){});
                  }
                  */
                  List<Widget> navigationViews = [
                    Container(
                      color: Colors.green[100],
                    ),
                    Container(
                      color: Colors.red[100],
                    ),
                    Container(
                      color: Colors.purple[100],
                    ),
                    Container(
                      color: Colors.blue[100],
                    ),
                  ];

                  List<BottomNavigationBarItem> bottomNavigationItems = [
                    const BottomNavigationBarItem(
                      label: "Home",
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                    const BottomNavigationBarItem(
                      label: "Order",
                      icon: Icon(
                        Icons.list,
                      ),
                    ),
                    const BottomNavigationBarItem(
                      label: "Favorite",
                      icon: Icon(
                        Icons.favorite,
                      ),
                    ),
                    const BottomNavigationBarItem(
                      label: "Me",
                      icon: Icon(
                        Icons.person,
                      ),
                    )
                  ];

                  return DefaultTabController(
                    length: 4,
                    initialIndex: controller.selectedIndex,
                    child: Scaffold(
                      body: IndexedStack(
                        index: controller.selectedIndex,
                        children: navigationViews,
                      ),
                      bottomNavigationBar: BottomNavigationBar(
                        currentIndex: controller.selectedIndex,
                        onTap: (index) {
                          controller.selectedIndex = index;
                          controller.setState(() {});
                        },
                        items: bottomNavigationItems,
                      ),
                    ),
                  );
                  //#END
                },
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  List<Widget> navigationViews = [
                    Container(
                      color: Colors.green[100],
                    ),
                    Container(
                      color: Colors.red[100],
                    ),
                    Container(
                      color: Colors.purple[100],
                    ),
                    Container(
                      color: Colors.blue[100],
                    ),
                  ];

                  List<BottomNavigationBarItem> bottomNavigationItems = [
                    const BottomNavigationBarItem(
                      label: "Home",
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                    const BottomNavigationBarItem(
                      label: "Order",
                      icon: Icon(
                        Icons.list,
                      ),
                    ),
                    const BottomNavigationBarItem(
                      label: "Favorite",
                      icon: Icon(
                        Icons.favorite,
                      ),
                    ),
                    const BottomNavigationBarItem(
                      label: "Me",
                      icon: Icon(
                        Icons.person,
                      ),
                    )
                  ];

                  return DefaultTabController(
                    length: 4,
                    initialIndex: controller.selectedIndex,
                    child: Scaffold(
                      body: IndexedStack(
                        index: controller.selectedIndex,
                        children: navigationViews,
                      ),
                      floatingActionButton: FloatingActionButton(
                        child: const Icon(Icons.add),
                        onPressed: () {
                          //
                        },
                      ),
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.centerDocked,
                      bottomNavigationBar: BottomAppBar(
                        color: Colors.redAccent,
                        shape:
                            const CircularNotchedRectangle(), //shape of notch
                        notchMargin: 5,
                        child: SizedBox(
                          height: 50.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.dashboard,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.list,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Expanded(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            // Expanded(
            //   child: Builder(
            //     builder: (context) {
            //       List<Widget> navigationViews = [
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
            //       ];

            //       List<BottomNavigationBarItem> bottomNavigationItems = [
            //         const BottomNavigationBarItem(
            //           label: "Home",
            //           icon: Icon(
            //             Icons.home,
            //           ),
            //         ),
            //         const BottomNavigationBarItem(
            //           label: "Order",
            //           icon: Icon(
            //             Icons.list,
            //           ),
            //         ),
            //         const BottomNavigationBarItem(
            //           label: "Favorite",
            //           icon: Icon(
            //             Icons.favorite,
            //           ),
            //         ),
            //         const BottomNavigationBarItem(
            //           label: "Me",
            //           icon: Icon(
            //             Icons.person,
            //           ),
            //         )
            //       ];

            //       return DefaultTabController(
            //         length: 4,
            //         initialIndex: controller.selectedIndex,
            //         child: Scaffold(
            //           floatingActionButton: FloatingActionButton(
            //             backgroundColor: Colors.blueGrey,
            //             onPressed: () {},
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: const [
            //                 Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //                 SizedBox(
            //                   height: 2.0,
            //                 ),
            //                 Text(
            //                   'Create',
            //                   style: TextStyle(
            //                     fontSize: 9.0,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           floatingActionButtonLocation:
            //               FloatingActionButtonLocation.centerDocked,
            //           body: IndexedStack(
            //             index: controller.selectedIndex,
            //             children: navigationViews,
            //           ),
            //           bottomNavigationBar: BottomAppBar(
            //             color: Colors.blueGrey,
            //             shape: const CircularNotchedRectangle(),
            //             notchMargin: 5,
            //             child: SizedBox(
            //               height: 60.0,
            //               child: Padding(
            //                 padding: const EdgeInsets.only(
            //                   left: 20.0,
            //                   right: 20.0,
            //                 ),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: <Widget>[
            //                     Expanded(
            //                       child: IconButton(
            //                         icon: Icon(
            //                           Icons.home,
            //                           color: selectedIndex == 0
            //                               ? Colors.white
            //                               : Colors.blueGrey[600],
            //                         ),
            //                         onPressed: () {
            //                           selectedIndex = 0;
            //                           setState(() {});
            //                         },
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: IconButton(
            //                         icon: Icon(
            //                           Icons.list,
            //                           color: selectedIndex == 1
            //                               ? Colors.white
            //                               : Colors.blueGrey[600],
            //                         ),
            //                         onPressed: () {
            //                           selectedIndex = 1;
            //                           setState(() {});
            //                         },
            //                       ),
            //                     ),
            //                     const SizedBox(
            //                       width: 20.0,
            //                     ),
            //                     Expanded(
            //                       child: IconButton(
            //                         icon: Icon(
            //                           Icons.favorite,
            //                           color: selectedIndex == 2
            //                               ? Colors.white
            //                               : Colors.blueGrey[600],
            //                         ),
            //                         onPressed: () {
            //                           selectedIndex = 2;
            //                           setState(() {});
            //                         },
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: IconButton(
            //                         icon: Icon(
            //                           Icons.person,
            //                           color: selectedIndex == 3
            //                               ? Colors.white
            //                               : Colors.blueGrey[600],
            //                         ),
            //                         onPressed: () {
            //                           selectedIndex = 3;
            //                           setState(() {});
            //                         },
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FheBottomNavigationView> createState() =>
      FheBottomNavigationController();
}
