import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ContohDashboardView extends StatefulWidget {
  const ContohDashboardView({Key? key}) : super(key: key);

  Widget build(context, ContohDashboardController controller) {
    controller.view = this;
    /*
    JSX vs JS
    JSX = Untuk bikin UI
    JS = Logic
    */

    /*
    selector {
      property: value
    }

    namaWidget(
      property: value,
      method/function: () {}
    )

    Mobile
      Android
      IOS
      Web
      Desktop
        FLUTTER

    Backend
      PHP
        Laravel
      Python
      NodeJS
        Expresss
      Golang

    Bahasa Pemrograman  
      PHP -> Laravel, CI, Phalcon, dsb-nya...
      Dart  -> Flutter, DartFrog
      Javascript -> React, Vue, ExtJS, jQuery

    Bahasa Styling
      CSS -> Bootstrap, Tailwind
    
    Framework
      1. Supaya lebih mudah develop-nya
      2. Supaya kode-nya lebih ringkas
        (misalnya, tanpa framework, kodingnya 100 baris)
        (tapi kalo pake framework , koding-nya jadi 10 baris)


    Flutter harus ngoding Native juga?
    Jawabannya: Tidak
    ----
    - POS
    - Ecommerce (Tokopedia, Shopee)
    - Fin-Tech
    - Absensi Online
    - Monitoring pekerjaan karyawan
    - E-Money (OVO, Dana)
    - Video Player (Netflix,dsb)

    Kecuali:
    - Aplikasi yang berhubungan dengan hardware/sensor
      (Kalo ga ada package-nya, akan perlu belajar Java dan Swift)


    Supaya kodingan Flutter lebih clean
    1. Pelajari cara membuat reuseable widget
    2. Pelajar Architecture (Paling mudah, MVC)

    Android
    IOS
    Desktop (Linux | Macos | Windows)
    Web

    Hati2 dalam memilih teknologi
    - Jarang terlalu sering pindah2
    - Karena framwork baru itu selalu bermunculan
    

    Kalau kondisinya:
    Udah nyaman di React
      Fokus aja di React

    React = bagus
    Flutter = bagus

    Fullstack
      - Backend
      - Front End

    Front End
      - React/Flutter

    Front End
      - Flutter

    //-------------------------
    Semua state management ini,
    cocok untuk aplikasi besar dan kecil!!

      yang mudah:
        setState
        provider
        riverpod
          getx
        mobx

      yang agak ruwet:
        bloc
        cubit
        redux

    State Management itu
    Tidak terlalu berpengaruh untuk
    Aplikasi besar atau kecil

    Yang lebih berpengaruh itu
    adalah
    Architecture

    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_bubble,
                size: 24.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      //alt+shift+s
      //state management
      //1. loading
      //2. counter
      //3. coba manipulasi list (contoh-nya bikin Cart)
      body: controller.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const ExLocationPicker(
                    id: "location",
                    label: "Location",
                    latitude: -6.218481065235333,
                    longitude: 106.80254435779423,
                  ),
                  //alt+shift+v
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        var item = controller.products[index];
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                backgroundImage: NetworkImage(
                                  item["photo"],
                                ),
                              ),
                              title: Text("${item["product_name"]}"),
                              subtitle: Text("${item["price"]}"),
                              trailing: SizedBox(
                                width: 120.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        item["qty"]--;
                                        controller.update();
                                      },
                                      child: Card(
                                        color: Colors.grey[800],
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "${item["qty"]}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        item["qty"]++;
                                        controller.update();
                                      },
                                      child: Card(
                                        color: Colors.grey[800],
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.add),
                      label: const Text("Add"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  State<ContohDashboardView> createState() => ContohDashboardController();
}
