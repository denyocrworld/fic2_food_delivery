/*
Basic Pemrograman
? - Variable
  Mangkok, Piring, Gelas
  ---
  Mangkok = Mie Soto
  Piring = Nasi Goreng
  Gelas = Air Putih, Jus Mangga
  Gelas = Gak cocok kalo bwt nyimpen  SOTO

  String => Nama, Alamat, Kota
  int => 31
  double => 50.25, 100.50
  bool => true | false


? Operator Aritmatika
? IF Statement
? - List/Array
? Map
? Looping
? Function
? OOP
- Bikin Class
- Bikin Variable
- Bikin Method
- Tau cara manggilnya
*/

/*
Input
Process
Output

Gaji
Menghitung gaji dikurangi pajak
Gaji Bersih

Memasak Nasi
Input: Beras
Process: Menanak Nasi
Output: Nasi

Memasak Mie
Input: Mie Kering
Process: Merebus  Mie
Output: Mie Kuah Matang
*/

// Inheritance
// Polymorphism
// Encapsulation

// Architecture
// MVC
/*
Product
ProductView
ProductController
*/

// Reuseable Widget
// ----

class Product {
  String productName = "";
  add(Map product) {}
}

class Customer {
  addCustomer(Map customer) {}
}

void main() {
  var product = Product();
  product.add({
    "product_name": "GG FILTER",
  });

  print(product.productName);
}
//dart test.dart
//nodemon --exec dart test.dart
