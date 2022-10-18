import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class PsMainNavigationView extends StatefulWidget {
  const PsMainNavigationView({Key? key}) : super(key: key);

  @override
  State<PsMainNavigationView> createState() => PsMainNavigationViewState();
}

class PsMainNavigationViewState extends State<PsMainNavigationView> {
  static late PsMainNavigationViewState instance;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    instance = this;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: selectedIndex,
          children: const [
            PsDashboardView(),
            PsParkingListView(),
            PsBookingListView(),
            PsProfileView(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PsShareParkingFormView()),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                MdiIcons.carConnected,
                color: Colors.white,
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'Share Parking',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 9.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: selectedIndex == 0
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 0;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.list,
                        color: selectedIndex == 1
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 1;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.list,
                        color: selectedIndex == 2
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 2;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: selectedIndex == 3
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 3;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
