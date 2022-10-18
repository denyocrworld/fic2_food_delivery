import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/ps_booking_list_view.dart';

class PsBookingListController extends State<PsBookingListView> implements MvcController {
  static late PsBookingListController instance;
  late PsBookingListView view;

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