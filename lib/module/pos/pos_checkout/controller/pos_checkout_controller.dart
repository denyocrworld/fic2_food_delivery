import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosCheckoutController extends State<PosCheckoutView>
    implements MvcController {
  static late PosCheckoutController instance;
  late PosCheckoutView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doCheckout() async {
    var paymentMethod = Input.get("payment_method");

    await FirebaseFirestore.instance.collection("pos_orders").add({
      "created_at": Timestamp.now(),
      "table_number": PosTableController.instance.selectedTable,
      "payment_method": paymentMethod,
      "items": PosController.instance.products.length,
      "total": PosController.instance.total,
      "seller": {
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "name": FirebaseAuth.instance.currentUser!.displayName ?? "-",
        "email": FirebaseAuth.instance.currentUser!.email ?? "-",
      },
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PosMainNavigationView()),
    );
  }
}
