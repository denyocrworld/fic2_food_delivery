import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/capekngoding/cg_premade_detail/service/cg_premade_detail_service.dart';
import 'package:hyper_ui/shared/widget/menu/menu.dart';
import '../controller/cg_premade_detail_controller.dart';

class CgPremadeDetailView extends StatefulWidget {
  const CgPremadeDetailView({Key? key}) : super(key: key);

  Widget build(context, CgPremadeDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgPremadeDetail"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: QMenuList(
                items: CgPremadeDetailService.menuList,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CgPremadeDetailView> createState() => CgPremadeDetailController();
}
