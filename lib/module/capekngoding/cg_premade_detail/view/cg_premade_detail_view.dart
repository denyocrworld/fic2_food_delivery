import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgPremadeDetailView extends StatefulWidget {
  const CgPremadeDetailView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeDetailController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgPremadeDetail"),
        actions: const [],
      ),
      body: Column(
        children: [
          Expanded(
            child: QMenuList(
              items: CgPremadeDetailService.menuList,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<CgPremadeDetailView> createState() => CgPremadeDetailController();
}
