import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cs_vendor_detail_view.dart';

class CsVendorDetailController extends State<CsVendorDetailView> implements MvcController {
  static late CsVendorDetailController instance;
  late CsVendorDetailView view;

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