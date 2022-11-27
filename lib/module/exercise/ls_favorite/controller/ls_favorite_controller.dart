import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_favorite_view.dart';

class LsFavoriteController extends State<LsFavoriteView> implements MvcController {
  static late LsFavoriteController instance;
  late LsFavoriteView view;

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