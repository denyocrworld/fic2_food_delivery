import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrController extends State<TrView> implements MvcController {
  static late TrController instance;
  late TrView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List items = [
    {
      "label": "Counter",
      "view": const TrsmCounterView(),
    },
    {
      "label": "Loading",
      "view": const TrsmLoadingView(),
    },
    {
      "label": "Visibility",
      "view": const TrsmVisibilityView(),
    },
    {
      "label": "Navigaiton",
      "view": const TrsmNavigationView(),
    },
    {
      "label": "Enabled/Disabled",
      "view": const TrsmEnabledAndDisabledView(),
    },
    {
      "label": "Cart",
      "view": const TrsmCartView(),
    },
    {
      "label": "Add & Delete",
      "view": const TrsmAddAndDeleteFromListView(),
    },
    {
      "label": "Loading for HTTP Request",
      "view": const TrsmLoadingForHttpRequestView(),
    },
    {
      "label": "Animation",
      "view": const TrsmAnimationView(),
    },
    {
      "label": "Digital Clock",
      "view": const TrsmDigitalClockView(),
    },
    {
      "label": "CRUD",
      "view": const TrsmCrudView(),
    }
  ];
}
