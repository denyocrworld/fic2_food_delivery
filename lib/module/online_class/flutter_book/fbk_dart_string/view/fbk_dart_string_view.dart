import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartStringView extends StatefulWidget {
  const FbkDartStringView({Key? key}) : super(key: key);

  bool? exercise1() {
    bool isValid = false;
    String productName = "JR SUPER 12";
    String query = "JR";

    //Perbaiki condition pada statement dibawah.
    //Seharusnya condition-nya adalah ketika:
    //productName mengandung kata2 yang ada pada variabel query!
    //[Tips] Gunakan .contains
    if (productName != productName) {
      isValid = true;
    }
    return isValid;
  }

  bool? exercise2() {
    bool isEmpty = false;
    String productName = "";
    String query = "JR";

    //Perbaiki condition pada statement dibawah.
    //Seharusnya condition-nya adalah ketika:
    //productName kosong
    //[Tips] Gunakan .isEmpty
    if (productName != productName) {
      isEmpty = true;
    }
    return isEmpty;
  }

  bool? exercise3() {
    bool isValid = false;
    String productName = "GG FILTER 12";
    String query = "JR";

    //Perbaiki condition pada statement dibawah.
    //Seharusnya condition-nya adalah ketika:
    //productName minimal memilki 2 karakter atau lebih
    //[Tips] Gunakan .length, dan >= 2
    if (productName == "") {
      isValid = true;
    }
    return isValid;
  }

  bool? exercise4() {
    bool isValid = false;
    int number = 23;
    String code = "";
    //Ubah angka 23 menjadi String "0023"
    //Gunakan .toString().padLeft(4,"0")!
    return code == "0023";
  }

  bool? exercise5() {
    bool isValid = false;
    int number = 27;
    String code = "";
    //Ubah angka 27 menjadi String "00027"
    //Gunakan .toString().padRight(5,"0")!
    return code == "00027";
  }

  bool? exercise6() {
    String email = "denyocr.world@gmail.com";
    bool isValid = false;

    //Cek nilai email, apakah email yang valid atau tidak
    //Gunakan Regex di bawah ini:
    //Gunakan fungsi .hasMatch pada Regex!
    /*
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\.[a-zA-Z]+$',
    );
    */
    return isValid;
  }

  bool? exercise7() {
    String firstName = "ANDREA";
    //Index pada statement ini salah
    //Seharusnya index-nya adalah index dari huruf N pada text di atas
    //Perbaiki index-nya!
    bool isValid = firstName[0] == "N";
    return isValid;
  }

  bool? exercise8() {
    String firstName = "ANDREA";
    //Ubah semua text di atas menjadi lowercase semua
    //Gunakan .toLowerCase !
    return firstName == "andrea";
  }

  bool? exercise9() {
    String firstName = "daniel Goleman";
    //Ubah semua text di atas menjadi lowercase semua
    //Gunakan .toUpperCase !
    return firstName == "DANIEL GOLEMAN";
  }

  bool? exercise10() {
    List arr = [];
    String line = "1;GG FILTER 12;250;-";
    //Split string di atas berdasarkan ; dan tampung di dalam arr!
    //Gunakan .split !
    return arr.length == 4;
  }

  bool? exercise11() {
    List arr = [];
    String line = "1,GG FILTER 12,250,-";
    //Split string di atas berdasarkan ; dan tampung di dalam arr!
    //Gunakan .split !
    return arr.length == 4;
  }

  bool? exercise12() {
    Map product = {};
    String str = '{"product_name": "GG FILTER 12","price": 25}';
    //Ubah String di atas menjadi Map di Dart
    //Dan tampung pada variabel product
    //Gunakan jsonDecode!!!
    return product['product_name'] == 'GG FILTER 12';
  }

  Widget build(context, FbkDartStringController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartString"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              rowLabel(exercise1),
              rowLabel(exercise2),
              rowLabel(exercise3),
              rowLabel(exercise4),
              rowLabel(exercise5),
              rowLabel(exercise6),
              rowLabel(exercise7),
              rowLabel(exercise8),
              rowLabel(exercise9),
              rowLabel(exercise10),
              rowLabel(exercise11),
              rowLabel(exercise12),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartStringView> createState() => FbkDartStringController();
}
