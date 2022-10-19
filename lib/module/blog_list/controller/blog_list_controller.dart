import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/blog_list_view.dart';

class BlogListController extends State<BlogListView> implements MvcController {
  static late BlogListController instance;
  late BlogListView view;
  String search = "";

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  updateSearch(value) {
    search = value;
    update();
  }
}
