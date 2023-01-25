import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold_bottom_navigationbar.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold_drawer.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold_image.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold_simple.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold_sliver_appbar.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/_/scaffold_tabbar_vertical.dart';
import 'package:hyper_ui/module/capekngoding/cg_scaffold/widget/device_view.dart';

class CgScaffoldView extends StatefulWidget {
  const CgScaffoldView({Key? key}) : super(key: key);

  Widget build(context, CgScaffoldController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgScaffold"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              DeviceView(
                snippet: "scaffold_bottom_navigation_bar",
                child: TemplateScaffoldBottomNavigationBar(),
              ),
              DeviceView(
                snippet: "scaffold_drawer",
                child: TemplateScaffoldDrawer(),
              ),
              DeviceView(
                snippet: "scaffold_image",
                child: TemplateScaffoldImage(),
              ),
              DeviceView(
                snippet: "scaffold_simple",
                child: TemplateScaffoldSimple(),
              ),
              DeviceView(
                snippet: "scaffold_sliver_appbar",
                child: TemplateScaffoldSliverAppbar(),
              ),
              DeviceView(
                snippet: "scaffold_tabbar_horizontal",
                child: TemplateScaffoldTabbarHorizontal(),
              ),
              DeviceView(
                snippet: "scaffold",
                child: TemplateScaffold(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgScaffoldView> createState() => CgScaffoldController();
}
