/*
Yok yang mau join,
Untuk memperdalam Dart n Flutter

Saya buat Rutin tiap senin pagi dan selasa pagi
(Kalo lagi Mood yak~)

----

Basic Dart
Tiktok
https://www.tiktok.com/@codingwithdeny/live

Gmeet
https://meet.google.com/oec-kbmg-uqh

Senin
6:30/7:00/7:30(Pagi) - Selesai

-----

Basic Flutter
Tiktok
https://www.tiktok.com/@codingwithdeny/live

Gmeet
https://meet.google.com/oec-kbmg-uqh

Selasa
6:30/7:00/7:30(Pagi) - Selesai


-----
Variable
  Mangkok, Piring, dan Gelas
  Bakso  , Nasi Goreng| Air
Operator Aritmatika
IF Statement
List
  - Bisa di isi lebih dari 1 nilai
  - Penyimpannya berbasis index yang dimulai dari 0
  Rak Buku
    3 4 Buku Politik
    2 3
    1 2
    0 1 Buku Sejarah

Map
  - Bisa di isi lebih dari 1 nilai
  - Penyimpannya berbasis key and value
  Rak Buku
    3 [Politik] Buku Politik
    2 [Sains]
    1 [Ekonomi]
    0 [Sejarah] Buku Sejarah
    
Looping
Function
--
OOP x

dart tutorial.dart
*/
void main() async {
  /*
  1. Kode kita lebih effisien
  2. Supaya tidak terjadi pengulangan dimana mana
  3. Supaya mudah di maintan
  4. Supaya lebih mudah dipahami/dibaca

  Function dan OOP
  */
  // double budySalary = 1000;
  // double tax = 0.1;
  // double expense = 100;
  // double insurance = 50;

  // double grossSalary = budySalary - expense - insurance;
  // double netSalary = grossSalary - (grossSalary * tax);
  // print("netSalary: $netSalary");

  // double anySalary = 1000;
  // double tax = 0.1;
  // double expense = 100;
  // double insurance = 50;

  // double grossSalary = anySalary - expense - insurance;
  // double netSalary = grossSalary - (grossSalary * tax);
  // print("netSalary: $netSalary");

  // double alexSalary = 1000;
  // double tax = 0.1;
  // double expense = 100;
  // double insurance = 50;

  // double grossSalary = alexSalary - expense - insurance;
  // double netSalary = grossSalary - (grossSalary * tax);
  // print("netSalary: $netSalary");

  double budySalary = getNetSalary(1000);
  print("budySalary: $budySalary");

  double anySalary = getNetSalary(2000);
  print("anySalary: $anySalary");

  double alexSalary = getNetSalary(4000);
  print("alexSalary: $alexSalary");
}

/*
Input
Process
Output


Memasak Nasi
Input: Beras
Process: Mengkukus
OUtput: Nasi

Memasak Mie
Input: Mie Kering
Process: Merebus Mie
OUtput: Mie Rebus Matang
*/
double getNetSalary(double salary) {
  double tax = 0.3;
  double expense = 100;
  double insurance = 50;

  double grossSalary = salary - expense - insurance;
  double netSalary = grossSalary - (grossSalary * tax);
  return netSalary;
}

//ini adalah function utk menambah produk
/*
1. Gunakan prefix
*/
product() {}

addProduct() {}
deleteProduct() {}
updateProduct() {}
getProducts() {}

/*
Clean Code
Robert c Martin
*/