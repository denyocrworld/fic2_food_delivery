/*
!  KOMUNITAS BERANDAL (UMUM)
!  HTTPS://tinyurl.com/join-berandal

!  KOMUNITAS FUGI (KHUSUS DART & FLUTTER)
!  HTTPS://tinyurl.com/join-fugi
-----------
- VARIABLE
- OPERATOR ARITMATIKA
- IF STATEMENT
- ARRAY/LIST & MAP
- LOOPING
- FUNCTION
*/

//tipe_data nama_variabel = initialValue;

void main() {
  Map product = {
    "product_name": "ODOL CIPTADENT", //product_name
    "price": 25, //price
    "description": "-", //description
  };
  List<String> productList = [
    "GG FILTER 12", //0
    "CIPTADENT", //1
    "MI SARIMI", //2
  ];

  //for (initialValue; condition; increnment/decrenment){}
  for (var i = 0; i < productList.length; i++) {
    var product = productList[i];
    print(product);
  }
}
