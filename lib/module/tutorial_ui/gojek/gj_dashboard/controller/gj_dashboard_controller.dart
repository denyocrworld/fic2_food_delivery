import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/gj_dashboard_view.dart';

class GjDashboardController extends State<GjDashboardView>
    implements MvcController {
  static late GjDashboardController instance;
  late GjDashboardView view;

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
    super.initState();
  }

  void onReady() {
    addListenerToScrollController();
  }

  int selectedIndex = 0;
  updateIndex(newIndex) {
    selectedIndex = newIndex;
    if (selectedIndex == 0) {
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 900),
        curve: Curves.ease,
      );
    } else {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 900),
        curve: Curves.ease,
      );
    }
    setState(() {});
  }

  addListenerToScrollController() {
    var offset = scrollController.offset;
    var maxScrollExtent = scrollController.position.maxScrollExtent;
    scrollController.addListener(() {
      if (offset >= maxScrollExtent / 2) {
        selectedIndex = 1;
      } else {
        selectedIndex = 0;
      }
      setState(() {});
    });

    scrollController.animateTo(
      maxScrollExtent,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
