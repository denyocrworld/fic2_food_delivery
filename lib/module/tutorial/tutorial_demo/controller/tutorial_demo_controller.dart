import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialDemoController extends State<TutorialDemoView>
    implements MvcController {
  static late TutorialDemoController instance;
  late TutorialDemoView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  List users = [];
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    users = obj["data"];
    setState(() {});
  }
}
