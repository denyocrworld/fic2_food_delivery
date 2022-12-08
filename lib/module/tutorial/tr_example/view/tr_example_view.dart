import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);

  // ~~~~
  // Demo OpenAI Integration di Flutter Hyper Extension >_<
  // COMING SOON yah belum direlease
  // ~~~~
  /*
    - Function
    - Widget
  */

  Widget build(context, TrExampleController controller) {
    controller.view = this;

//@completed:  buatlah List<Map<String,dynamic>> customer dengan customer_name, address dan email, dan generate 5 dummy data
    List<Map<String, dynamic>> customerList = [
      {
        'customer_name': 'John Doe',
        'address': 'Jl. Raya No.1, Jakarta',
        'email': 'johndoe@gmail.com'
      },
      {
        'customer_name': 'Jane Doe',
        'address': 'Jl. Raya No.2, Jakarta',
        'email': 'janedoe@gmail.com'
      },
      {
        'customer_name': 'James Doe',
        'address': 'Jl. Raya No.3, Jakarta',
        'email': 'jamesdoe@gmail.com'
      },
      {
        'customer_name': 'Jill Doe',
        'address': 'Jl. Raya No.4, Jakarta',
        'email': 'jilldoe@gmail.com'
      },
      {
        'customer_name': 'Jack Doe',
        'address': 'Jl. Raya No.5, Jakarta',
        'email': 'jackdoe@gmail.com'
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            //Yuk test bikin Widget, makin seru >_<
//@completed:  buatlah sebuah Container 200x200 dengan warna gradient merah dan biru serta radius 32
            Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue],
                ),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
//@completed:  buatlah 3 container 100x100 dengan warna merah,hijau dan cokelat serta radius 64
            Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(64.0)),
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(64.0)),
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.all(Radius.circular(64.0)),
              ),
            ),
//@completed:  Buatlah sebuah Container dengan lebar maksimal dan tinggi 300, berikan gradient hijau,biru,merah,cokelat,kuning dengan radius 12
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green,
                    Colors.blue,
                    Colors.red,
                    Colors.brown,
                    Colors.yellow
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
//@completed:  Buatlah 3 Container di dalam Row, dengan ukuran 100x100 dan warna hijau,biru,kuning
//kadang perlu diperbaiki dikit kode-nya wkwkw blm maksimal
            Row(
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.yellow,
                ),
              ],
            ),
            const SizedBox(
              height: 2.0,
            ),
//@completed: buatlah 5 container dengan Column, beri warna merah,kuning,hijau,biru,cokelat dengan radius 12 dan ukuran 200x100
            Container(
              width: 200.0,
              height: 100.0,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              decoration: const BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
//@completed:  Tampilkan data dari customerList dengan data customer_name, address dan email ke dalam ListView.builder
//perlu disesuaikan ya >_<
            ListView.builder(
              itemCount: customerList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(customerList[index]["customer_name"]),
                  subtitle: Text(customerList[index]["address"]),
                  trailing: Text(customerList[index]["email"]),
                );
              },
            ),
            //Keren ya!!
            //Comment di bawah, ada ide apa yang bisa kita buat dengan OpenAI?
            // Thanks!
          ],
        ),
      ),
    );

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
