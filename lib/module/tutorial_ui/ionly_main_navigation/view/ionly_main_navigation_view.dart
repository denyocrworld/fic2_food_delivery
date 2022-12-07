import 'package:flutter/material.dart';
import 'package:example/core.dart';

class IonlyMainNavigationView extends StatefulWidget {
  const IonlyMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, IonlyMainNavigationController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          elevation: 0.6,
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.blueGrey[900],
          ),
          titleTextStyle: GoogleFonts.aclonica(
            color: Colors.blueGrey[900],
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey[500],
        ),
      ),
      child: DefaultTabController(
        length: 5,
        initialIndex: controller.selectedIndex,
        child: Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex,
            children: [
              const IonlyDashboardView(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) {
              controller.selectedIndex = newIndex;
              controller.setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.tune,
                ),
                label: "Setting",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IonlyMainNavigationView> createState() =>
      IonlyMainNavigationController();
}
