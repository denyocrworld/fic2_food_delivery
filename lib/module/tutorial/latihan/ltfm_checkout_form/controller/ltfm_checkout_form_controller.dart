import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ltfm_checkout_form_view.dart';

class LtfmCheckoutFormController extends State<LtfmCheckoutFormView>
    implements MvcController {
  static late LtfmCheckoutFormController instance;
  late LtfmCheckoutFormView view;

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
