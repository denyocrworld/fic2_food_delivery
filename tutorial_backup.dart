// import 'package:dio/dio.dart';

// /*
// Clean Code
// ---
// General
// - Jangan pake bahasa Indonesia, harus bahasa Inggris
// > Translation | EN | ID | NL

// Komentar
// - Jangan membuat komentar untuk menjelaskan variabel ini utk apa
// (Kecuali utk dokumentasi)
// Daripada temen2 kasih komentar,
// Diperjelas aja nama variabelnya

// Penamaan Variable, Function dan Class
// - Nama-nya harus jelas, deskriptif dan Sesuai dengan tujuannya
// - Sesuai dengan tipe data-nya
// - Tidak alay, tidak berlebihan dan tidak kepanjangan
// - Boleh kepanjangan kalau dengan nama yang pendek nama variabelnya jadi tidak jelas.
// - Konsisten

// Function
// - Gunakan prefix
// - Cuman boleh punya satu tujuan, dan hanya satu tujuan
// - Isinya tidak boleh lebih dari 1 layar, kecuali karena hal yang spesifik

// Class
// - Harus sesuai dengan tujuannya.
// - Jika terkait architecture, Mengikut Architecture yang digunakan

// Penggunaan Komentar
// - Pastikan ketika pake komentar, itu memang sangat perlu

// Architecture
// */
// void main() {
//   String fstNm;
//   String firstName;

//   List product = []; //x

//   //plural
//   List products = []; //v

//   //nama+list
//   List productList = []; //v

//   //Berlebihan
//   String fullNameOfMe = "";

//   String fullNameOfUserWithID1 = "";
//   String fullNameOfUserWithID2 = "";
//   String fullNameOfUserWithID3 = "";

//   //Berlebihan
//   String fullNameStr;

//   //Alay
//   String custName; // => customerName
//   Map pRoduct; // => product
//   String customerNAME; // => customerName

//   //Kepanjangan
//   String addressOfDenyOcrFromUserDatabase = "";

//   //Boleh panjang supaya jelas
//   addProductToLocalDatabase() {}

//   /*
//   Kode-nya tidak akan kita pake lagi ke depan,
//   Tapi masih akan boleh digunakan di versi berikut-nya. (2.0)
//   Tapi akan dihapus di versi 3.0
//   */

//   //TODO: Deprecated
//   addProductToBackupDatabase() {}

//   //Sesuai tujuannya
//   int age = 35000;

//   /*

//   */
// }

// /*
// 1. Tujuan kita komentarin apa
// - Untuk mendisable karena kita mau test kode yang baru

// Kalau misalnya kode baru-nya udah bekerja,
// Sebaiknya kode yang di komentarin dihapus aja.
// */

// //TODO: Alex, fix this lines
// void test() {
//   //singular
//   Map product = {
//     "id": 1,
//     "product_name": "GG FILTER 12",
//   };

//   Map customer = {
//     "id": 1,
//     "customer_name": "Deny Ocr",
//   };
// }

// class Product {
//   static addProduct() async {
//     var response = await Dio().post(
//       "https://reqres.in/api/products",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//       data: {},
//     );
//     Map obj = response.data;
//     await addProductCategories();
//     await getProducts();

//     var response = await Dio().get(
//       "https://reqres.in/api/users",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//     );
//     Map obj = response.data;

//     var response = await Dio().get(
//       "https://reqres.in/api/users",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//     );
//     Map obj = response.data;

//     var response = await Dio().get(
//       "https://reqres.in/api/users",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//     );
//     Map obj = response.data;
//   }

//   static addProductCategories() async {
//     var response = await Dio().post(
//       "https://reqres.in/api/product_categories",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//       data: {},
//     );
//     Map obj = response.data;
//   }

//   static getProducts() async {
//     var response = await Dio().get(
//       "https://reqres.in/api/products",
//       options: Options(
//         headers: {
//           "Content-Type": "application/json",
//         },
//       ),
//     );
//     Map obj = response.data;
//   }
// }

// /*
// Base
// firstName

// Controller
// firstNameController


// Dasar
// - Kesepakatan Tim

// - Bahasa Indonesia
// - variabelnya pake prefix

// */

// product() {}

// //Prefix
// addProduct() {}
// getProduct() {}
// deleteProduct() {}
// updateProduct() {}

// addCustomer() {}
// getCustomer() {}
// deleteCustomer() {}
// updateCustomer() {}

// addProductToLocalDatabase() {}
// addProductToBackupDatabase() {}

// /*
// Base
// Product

// Model
// Product
//               ProductModel x

// View
// ProductView

// Controller
// ProductController

// Service
// ProductService

// -----

// Service -> Repository dan DataSource

// ProductRepository
// ProductDataSource

// ---

// Event
// ProductEvent

// Provider
// ProductProvider

// ---

// Extension
// ProductExtension


// ---

// Provider

// MVC
// ProductController
// ProductProvider

// ProductController
// ProductStateProvider x

// ProductViewModel
// ProductEvent

// */

// do_something_dong_bro() {}
