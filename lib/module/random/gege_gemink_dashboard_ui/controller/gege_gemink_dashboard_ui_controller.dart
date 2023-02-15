import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/gege_gemink_dashboard_ui_view.dart';

class GegeGeminkDashboardUiController extends State<GegeGeminkDashboardUiView>
    implements MvcController {
  static late GegeGeminkDashboardUiController instance;
  late GegeGeminkDashboardUiView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  int selectedCategoryIndex = 0;
  updateCategoryIndex(newIndex) {
    selectedCategoryIndex = newIndex;
    setState(() {});
  }

  List categoryList = [
    "Top Stream",
    "Currently Online",
    "Verified",
    "Most Viewed",
  ];

  final CarouselController carouselController = CarouselController();
}
