/*

*
**
***
****
*****
******
*******

*/

void main() async {
  // kenapa perlu di await
  // karena kita tidak tahu, function itu beres-nya kapan
  // contoh function yang async
  /*
  get data dari api
  get location
  get permission
  save gambar ke dalam file
  ambil file dari temporary directory
 */
  // var product;
  // getProducts().then((value) {
  //   print(value);
  // });
  // getProducts().then((value) {
  //   print(value);
  // });
  // print("HEllo world");
  var product = await getProducts();
  print(product);
  var category = await getProductCategory();
  print(category);
  print("HEllo world");
}

Future getProducts() async {
  return "GG FIlter";
}

Future getProductCategory() async {
  return "Rokok";
}
