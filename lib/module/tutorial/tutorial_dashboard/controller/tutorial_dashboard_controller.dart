import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/tutorial_dashboard_view.dart';

class TutorialDashboardController extends State<TutorialDashboardView>
    implements MvcController {
  static late TutorialDashboardController instance;
  late TutorialDashboardView view;
  int counter = 0;
  bool loading = false;
  List items = [
    {
      "product_name": "Manggo",
      "photo":
          "https://i.ibb.co/09pYvGT/photo-1580436032164-598b4cacc870-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "qty": 0,
      "price": 15,
    },
    {
      "product_name": "Apple",
      "photo":
          "https://i.ibb.co/jbXwfc0/photo-1624952962903-b6272c309864-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "qty": 0,
      "price": 15,
    },
    {
      "product_name": "Orange",
      "photo":
          "https://i.ibb.co/L1RWsvT/photo-1503508343067-c4103b7140b3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "qty": 0,
      "price": 15,
    }
  ];

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
