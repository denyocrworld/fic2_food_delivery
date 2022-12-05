import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);

  Widget build(context, TrExampleController controller) {
    controller.view = this;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Default"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: successColor,
                  ),
                  onPressed: () {},
                  child: const Text("Success"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: dangerColor,
                  ),
                  onPressed: () {},
                  child: const Text("Danger"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: warningColor,
                  ),
                  onPressed: () {},
                  child: const Text("Warning"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: infoColor,
                  ),
                  onPressed: () {},
                  child: const Text("Info"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                  ),
                  onPressed: () {},
                  child: const Text("Primary"),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "H1",
              style: TextStyle(
                fontSize: h1,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "H2",
              style: TextStyle(
                fontSize: h2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "H3",
              style: TextStyle(
                fontSize: h3,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "H4",
              style: TextStyle(
                fontSize: h4,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "H5",
              style: TextStyle(
                fontSize: h5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "H6",
              style: TextStyle(
                fontSize: h6,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
    //#TEMPLATE nav_bottom_navigation_bar
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        /*
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
          ],
        ),
        */
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (newIndex) {
            controller.selectedIndex = newIndex;
            controller.setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Me",
            ),
          ],
        ),
      ),
    );
    //#END

    //#TEMPLATE stepper
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stepper(
              currentStep: controller.selectedIndex,
              onStepCancel: () {
                if (controller.selectedIndex > 0) {
                  controller.selectedIndex -= 1;
                  controller.setState(() {});
                }
              },
              onStepContinue: () {
                if (controller.selectedIndex <= 0) {
                  controller.selectedIndex += 1;
                  controller.setState(() {});
                }
              },
              onStepTapped: (int index) {
                controller.selectedIndex = index;
                controller.setState(() {});
              },
              // Customize your Continue and Cancel button
              // controlsBuilder: ((context, details) {
              //   return Container();
              // }),
              steps: <Step>[
                Step(
                  title: const Text('Step 1 title'),
                  content: Container(
                    height: 100.0,
                    color: Colors.green,
                  ),
                ),
                Step(
                  title: const Text('Step 2 title'),
                  content: Container(
                    height: 100.0,
                    color: Colors.blue,
                  ),
                ),
                Step(
                  title: const Text('Step 3 title'),
                  content: Container(
                    height: 100.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    //#END
  }

  @override
  State<TrExampleView> createState() => TrExampleController();
}
