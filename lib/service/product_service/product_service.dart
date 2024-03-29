import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  static addProduct({
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").add({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "category": category,
      "description": description,
      "owner": {
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "name": FirebaseAuth.instance.currentUser!.displayName,
      },
    });
  }

  static delete(String id) async {
    await FirebaseFirestore.instance.collection("products").doc(id).delete();
  }

  static updateProduct({
    required String id,
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").doc(id).update({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "category": category,
      "description": description,
      "owner": {
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "name": FirebaseAuth.instance.currentUser!.displayName,
      },
    });
  }
}
