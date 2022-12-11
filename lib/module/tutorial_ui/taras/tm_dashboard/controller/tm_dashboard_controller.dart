import 'dart:math';

import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tm_dashboard_view.dart';

class TmDashboardController extends State<TmDashboardView>
    implements MvcController {
  static late TmDashboardController instance;
  late TmDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  List categoryList = [
    {
      "photo":
          "https://i.ibb.co/p36pWh3/photo-1577375989931-5c70b4c72b00-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "category_name": "Beds",
      "item_count": Random().nextInt(9000),
    },
    {
      "photo":
          "https://i.ibb.co/G5TKWn3/photo-1467283492892-4326fa405008-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "category_name": "Tables",
      "item_count": Random().nextInt(9000),
    },
    {
      "photo":
          "https://i.ibb.co/cb40wQd/photo-1652267090817-09aa5ac4fa37-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "category_name": "Chests",
      "item_count": Random().nextInt(9000),
    }
  ];

  List userList = [
    {
      "photo":
          "https://i.ibb.co/tJVXP9W/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Jessica Doe",
      "role": "System Architect",
      "balance": Random().nextInt(90000),
    },
    {
      "photo":
          "https://i.ibb.co/GTtyNQg/photo-1490578474895-699cd4e2cf59-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Daniel Cliffman",
      "role": "Programmer",
      "balance": Random().nextInt(90000),
    },
    {
      "photo":
          "https://i.ibb.co/31kSBct/photo-1528813860492-bb99459ec095-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Daisy",
      "role": "System Analyst",
      "balance": Random().nextInt(90000),
    },
    {
      "photo":
          "https://i.ibb.co/G0rq24K/photo-1503001358144-8d7f2c1db9f5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "John Doe",
      "role": "Programmer",
      "balance": Random().nextInt(90000),
    }
  ];
}
