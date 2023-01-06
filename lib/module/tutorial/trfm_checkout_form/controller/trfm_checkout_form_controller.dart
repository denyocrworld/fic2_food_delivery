import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/trfm_checkout_form_view.dart';

class TrfmCheckoutFormController extends State<TrfmCheckoutFormView>
    implements MvcController {
  static late TrfmCheckoutFormController instance;
  late TrfmCheckoutFormView view;

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
