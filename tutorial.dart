/*
Variable
Operator Aritmatika
IF Statement
List
Map
Looping
Function
*/
void main() {
/*
Gelas, Mangkok, Piring
Air  , Bakso  , Nasi Goreng

Gelas != Nasi Goreng
*/
  //tipe_data nama_variable = nilai_awal;
  // String productName = "JR SUPER 12";
  // double price = 20.50;
  // int age = 30;
  // bool isAdmin = false; //true || false

  // productName = "SUSU DANCOW";
  // productName = "SK KRETEK 12";
  // productName = "GG FILTER 12";
  // productName = "VIKS ANAK";

  // print("productName: $productName");
  // print("price: $price");
  // print("age: $age");
  // print("isAdmin: $isAdmin");
  //                    0             1             2            3
  List productList = ["Kayu Putih", "Kecap Bango", "SUSU ENAK", "GG FILTER"];
  for (var product in productList) {
    print(product);
  }

  print("---");

  // for (var i = 0; i < productList.length; i++) {
  for (var i = 0; i < 4; i++) {
    var product = productList[i];
    print(product);
  }

  //kondisi-nya
  //action-nya

  print("-------");

  var name = "Angga";

  //if(condition){
  //
  //}
  /*
  ==
  !=
  >
  <
  >=
  <=
  */
  if (name != "Angga") {
    //true || false
    print("Anda adalah anak Bapak iding");
  } else if (name == "Deny") {
    print("Anda adalah anak Bapak Yusda");
  } else {
    print("Anda bukanlah anak Bapak iding");
  }

  /*
  Nasi -> 
  Panci 

  Magikom
  */

  // double salary = 1000;
  // double tax = 0.1;
  // double insurance = 200;
  // double lainLain = 50;

  // double netSalary = salary - (salary * tax) - insurance - lainLain;
  // print("netSalary: $netSalary");

  // double salary = 900;
  // double tax = 0.1;
  // double insurance = 200;
  // double lainLain = 50;

  // double netSalary = salary - (salary * tax) - insurance - lainLain;
  // print("netSalary: $netSalary");

  // double salary = 800;
  // double tax = 0.1;
  // double insurance = 200;
  // double lainLain = 50;

  // double netSalary = salary - (salary * tax) - insurance - lainLain;
  // print("netSalary: $netSalary");

  double anggaSalary = 1000;
  double anggaNetSalary = getNetSalary(anggaSalary);
  print("anggaNetSalary: $anggaNetSalary");

  double monaSalary = 2000;
  double monaNetSalary = getNetSalary(monaSalary);
  print("monaNetSalary: $monaNetSalary");

  double denySalary = 3000;
  double denyNetSalary = getNetSalary(denySalary);
  print("denyNetSalary: $denyNetSalary");
}

double getNetSalary(double salary) {
  double tax = 0.1;
  double insurance = 200;
  double lainLain = 50;

  double netSalary = salary - (salary * tax) - insurance - lainLain;
  return netSalary;
}
