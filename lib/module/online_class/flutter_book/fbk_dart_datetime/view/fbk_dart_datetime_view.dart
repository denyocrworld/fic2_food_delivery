import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkDartDatetimeView extends StatefulWidget {
  const FbkDartDatetimeView({Key? key}) : super(key: key);

  bool? exercise1() {
    DateTime date = DateTime(2023, 8, 1);
    //Ubah tanggal di atas menjadi 2023-08-01
    //Gunakan DateFormat dari package intl
    //Gunakan format ini: yyyy-MM-dd
    //Masukkan nilainya ke variable datef
    String datef = "";
    return datef == "2023-08-01";
  }

  bool? exercise2() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);
    //Ubah tanggal di atas menjadi 2023-08-01 20:21
    //Gunakan DateFormat dari package intl
    //Gunakan format ini: yyyy-MM-dd kk:mm
    //Masukkan nilainya ke variable datef
    String datef = "";
    return datef == "2023-08-01 20:21";
  }

  bool? exercise3() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);
    //Ambil hari dari variabel date
    //Gunakan .day
    int day = 0;
    return day == 1;
  }

  bool? exercise4() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);
    //Ambil bulan dari variabel date
    //Gunakan .month
    int day = 0;
    return day == 8;
  }

  bool? exercise5() {
    DateTime date = DateTime(2023, 8, 1, 20, 21);
    //Ambil tahun dari variabel date
    //Gunakan .year
    int day = 0;
    return day == 2023;
  }

  bool? exercise6() {
    DateTime date = DateTime(2023, 8, 1, 15, 30);
    //Ambil jam dan menit dari DateTime date.
    //Gunakan DateFormat dengan format kk:ss
    //Masukkan nialinya ke variable time
    String time = "";
    return time == "15:30";
  }

  bool? exercise7() {
    Timestamp timestamp = Timestamp.now();
    //Convert timestamp Firestore menjadi DateTime
    //Gunakan .toDate
    DateTime? date;
    // ignore: unnecessary_null_comparison
    return date != null;
  }

  bool? exercise8() {
    Timestamp timestamp = Timestamp.now();
    //Convert timestamp Firestore menjadi DateTime
    //Gunakan .toDate
    //Lalu, convert variable date menjadi format: d MMM y
    //Gunakan DateFormat dan tampung ke variable datef
    DateTime? date;
    String datef = "";
    // ignore: unnecessary_null_comparison
    return datef.length == 10;
  }

  bool? exercise9() {
    DateTime startAt = DateTime(2023, 8, 1, 15, 30);
    DateTime endAt = DateTime(2023, 9, 1, 15, 30);
    //Ambil selisih hari antara startAt dan endAt
    //Gunakan .difference
    //Contoh: endAt.difference(startAt).inDays;
    //Assign nilainya ke variable diff
    int diff = 0;
    return diff == 31;
  }

  bool? exercise10() {
    DateTime date = DateTime(2023, 8, 1, 15, 30);
    //Ubah format tanggal variable date menjadi:
    //Tuesday, 1 Aug 2023
    //Gunakan DateFormat : EEEE, d MMM y
    //Assign ke variable datef
    String datef = "";
    return datef == "Tuesday, 1 Aug 2023";
  }

  Widget build(context, FbkDartDatetimeController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartDatetime"),
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkDartDatetimeView> createState() => FbkDartDatetimeController();
}
