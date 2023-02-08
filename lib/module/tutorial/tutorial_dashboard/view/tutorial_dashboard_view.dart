import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialDashboardView extends StatefulWidget {
  const TutorialDashboardView({Key? key}) : super(key: key);

  Widget build(context, TutorialDashboardController controller) {
    controller.view = this;

    /*
    Kelas Online Flutter: (Gelombang II)
    ? Buka aja
    ! capekngoding.com
    Kelas-nya start besok!
    ---

    Basic Pemrograman
    - Variable
    - Operator Aritmatika
    - IF Statement
    - List/Array
    - Map
    - Looping
    - Function & Async Function
    - OOP

    Rumah 
    - Arsitek (Architecture)
    - Tukang (Programmer)
    - Alat (Palu, Tang, Paku, dsb) | (Getx, Provider, Riverpod)

    State Management
    - BLoC
    - Cubit
    - Getx
    - Provider
    - Riverpod
    - setState

    Architecture
    - MVC
    - MVVM
    - Clean Architecture

    Materi: Basic Flutter
    Common Widget
      - Scaffold
      - AppBar
      - BottomNavigationBar
      - Container
      - Text
      - Image
      - CircleAvatar
      - Icon
      - ListTile
      - Card
      - Button
      ----------
      - InkWell
      - GestureDetector
      ----------
      - Form
      ----------
      - Chart
      - Map dgn FlutterMap
    Layout
      - Row
      - Column
      - Wrap
      - Stack
      - Orientation Builder
      - Layout Builder

    List
      - ListView
      - GridView
    Navigasi
      - Pindah halaman, back
      - Masuk ke halaman dan tidak bisa kembali lagi
      - Cara oper data dari Page 1 ke Page 2
    State Management
      StatelessWidget
      StatefulWidget
      - Counter
      - Loading
      - Visibile
      - Animation
      - Cart
    */

    /*
    NamaWidget(
      property: value,
      child:
      children:

      event
      onTap
      onDoubleTap
      onItemSelected

      builder
        itemBuilder
        dayBuilder
    )
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                );
              },
              child: const Text("Save"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] ??= 0;
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["product_name"],
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
                                    if (item["qty"] == 0) return;
                                    item["qty"]--;
                                    controller.setState(() {});
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
                                    controller.setState(() {});
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialDashboardView> createState() => TutorialDashboardController();
}
