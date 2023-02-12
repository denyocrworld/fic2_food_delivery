/*
Basic Pemrograman
Variable
  Mangkok, Gelas, Piring
  Bakso  , Air  , Nasi Goreng
Operator Aritmatika
IF Statement
List
Map
---
Konversi Tipe Data
Casting tipe data x sebagai y
---
Looping
Function & Async Function
*/

//dart tutorial.dart
//nodemon --exec dart tutorial.dart

// 1. Install nodejs
// 2. npm install -g nodemon

/*
;
() 
{}
[]
*/

double getNetSalary(double salary) {
  double tax = 0.1;
  double asuransi = 10;
  double bebanLainnya = 5;
  double netSalary = (salary - asuransi - bebanLainnya) - (salary * tax);
  return netSalary;
}

void main() {
  double netSalaryBudy = getNetSalary(10000);
  double netSalaryAny = getNetSalary(70000);
  double netSalaryAlex = getNetSalary(6000);

  print("netSalaryBudy : $netSalaryBudy");
  print("netSalaryAny : $netSalaryAny");
  print("netSalaryAlex : $netSalaryAlex");
}

saveProduct() {
  int number = 3;
}

/*
Mesin Keju
Input: Susu
Process: Fermentasi
Output: Keju

Masak Nasi
INput: Beras
Process: Menanak Nasi
Output: Nasi

Mie Rebus
Input: Mie Kering
Process: Merebus
Output: Mie Rebus Matang
*/
