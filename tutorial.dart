/*
class
- untuk mengelompokkan kode kita
- untuk merapihkan kode kita

Contoh kasus penggunaannya di real project:
- Untuk membuat Controller
- Untuk membuat Model
- Untuk membuat View/Reuseable Widget
*/
class ProductController {
  static List productList = [];
  static get() {
    return productList;
  }

  static add(product) {
    productList.add(product);
  }

  static edit(product) {
    productList.add(product);
  }

  static delete(product) {
    productList.remove(product);
  }

  static uploadPhoto() async {
    //-
  }

  //public method
  deleteAll() {}

  //private method
  _deletePricelessProducts() {}
}

class CustomerController {
  static List customerList = [];
  static get() {
    return customerList;
  }

  static add(product) {
    customerList.add(product);
  }

  static edit(product) {
    customerList.add(product);
  }

  static delete(product) {
    customerList.remove(product);
  }

  static uploadPhoto() async {
    //-
  }

  deleteAll() {}
}

// bedanya static | non-static
// non-static inisialisasi object

void main() async {
  ProductController.add({
    "product_name": "Elegant Frozen Chicken",
    "price": 25,
  });

  ProductController.add({
    "product_name": "Electronic Metal Keyboard",
    "price": 25,
  });

  ProductController.add({
    "product_name": "Electronic Frozen Towels",
    "price": 25,
  });

  var productList = ProductController.get();
  print(productList);

  //non-static
  var productController = ProductController();
  productController.deleteAll();
}
