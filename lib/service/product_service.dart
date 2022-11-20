import 'package:example/service/db_service.dart';

class ProductService {
  static List products = [];
  static addProduct(Map product) async {
    products.add(product);
    await DBService().save();
  }

  static deleteProduct(Map item) async {
    products.remove(item);
    await DBService().save();
  }
}
