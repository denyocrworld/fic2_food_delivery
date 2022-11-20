import "package:hive/hive.dart";

late LazyBox mainStorage;

class DBService {
  late Box mainStorage;

  load() async {
    // try {
    //   ProductService.products = await mainStorage.get("products") ?? [];
    // } on Exception catch (err) {
    //   print(err);
    // }
  }

  save() async {
    // await mainStorage.put("products", ProductService.products);
  }
}
