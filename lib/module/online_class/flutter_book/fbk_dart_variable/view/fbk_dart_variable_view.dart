import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_variable_controller.dart';

class FbkDartVariableView extends StatefulWidget {
  const FbkDartVariableView({Key? key}) : super(key: key);

  bool? exercise1() {
    //Ubah tipe data variable dibawah ini menjadi String
    int price = 100;
    return price is String;
  }

  bool? exercise2() {
    double? price;
    String text = "100.24";
    //Ubahlah variable text di atas menjadi double,
    //dan isilah varibel price dengan hasil konversinya
    //di bagian bawah
    return price == 100.24;
  }

  bool? exercise3() {
    double? price;
    //Uncomment kode dibawah ini
    //Perbaiki kode-nya agar tidak error
    //[TIPS] Hilangkan semua String selain angka 0-9 dan titik.
    //Gunakan Regex seperti ini: .replaceAll(RegExp(r'[^\d.]'), '')

    /*
    String text = "300.24a";
    price = double.parse(text);
    */

    return price == 300.24;
  }

  bool? exercise4() {
    double total = 0;
    //Uncomment kode dibawah ini!
    //getTotal akan mengalami error, karena tipe data yang input tidak benar
    //Perbaiki agar getTotal bisa bekerja!
    /*
    total = getTotal("10000", "4");
    */
    return total == 40000;
  }

  bool? exercise5() {
    double? total;

    //Uncomment kode dibawah ini!
    //Kode dibawah akan error jika di jalankan,
    //Perbaiki dengan meng-gunakan .tryParse("300aa")??0
    //Sehingga ketika parameter-nya tidak valid, nilainya menjadi 0
    /*
    total = double.parse("300aa");
    */
    return total != null;
  }

  bool? exercise6() {
    int? age;

    //Uncomment kode dibawah ini!
    //Kode dibawah akan error jika di jalankan,
    //Perbaiki dengan meng-gunakan .tryParse("39ads")??0
    //Sehingga ketika parameter-nya tidak valid, nilainya menjadi 0

    /*
    age = int.parse("39ads");
    */

    return age != null;
  }

  bool? exercise7() {
    String? name;

    //Uncomment kode dibawah ini!
    //Kode dibawah akan error jika di jalankan,
    //Perbaiki dengan meng-gunakan .tryParse("39ads")??0
    //Sehingga ketika parameter-nya tidak valid, nilainya menjadi 0

    /*
    age = int.parse("39ads");
    */
    return name != null;
  }

  bool? exercise8() {
    //Ini adalah contoh kode untuk mengambil Text diantara ' dan '.
    /*
    String str = "The text is between 'this'";
    int startIndex = str.indexOf("'") + 1;
    int endIndex = str.lastIndexOf("'");
    String textBetweenQuotes = str.substring(startIndex, endIndex);
    */

    String text = "hello 'Deny', apa kabar?";
    String? name;
    //Berdasarkan referensi di atas,
    //Ambil text diantara ' dan ' pada variable text
    return name == "Deny";
  }

  bool? exercise9() {
    List numbers = [70, 23, 44, 33, 100, 23, 109];
    double average = 0;
    double total = 0;
    /*
    Hitunglah nilai rata2 dari List di atas.
    [TIPS] Gunakan for untuk mendapatkan total.
    Gunakan numbers.length untuk mendapatkan panjang List
    */
    return average.toStringAsFixed(2) == "57.43";
  }

  bool? exercise10() {
    List numbers = [70, 23, 44, 33, 100, 23, 109];
    /*
    Hitunglah minValue dan maxValue dari List numbers di atas.
    [Tips] - Gunakan .sort, ambil minValue dari .first dan ambil maxValue
    dari .last
    */
    int minValue = 0;
    int maxValue = 0;

    return minValue == 23 && maxValue == 109;
  }

  double getTotal(double price, int qty) {
    return price * qty;
  }

  Widget rowLabel(Function func) {
    var text = func.toString();
    int startIndex = text.indexOf("'") + 1;
    int endIndex = text.lastIndexOf("'");
    String functionName = text.substring(startIndex, endIndex);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Expanded(
            child: Text(functionName),
          ),
          Checkbox(
            value: func() ?? false,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  Widget build(context, FbkDartVariableController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartVariable"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
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
          ],
        ),
      ),
    );
  }

  @override
  State<FbkDartVariableView> createState() => FbkDartVariableController();
}
