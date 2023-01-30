import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgCommonView extends StatefulWidget {
  const CgCommonView({Key? key}) : super(key: key);

  Widget build(context, CgCommonController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgCommon"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SnippetContainer("item"),
              Text("""
item[""]
"""),
              Divider(),
              SnippetContainer("pa"),
              Text("""
margin: const EdgeInsets.all(),
"""),
              SnippetContainer("p1 - p50"),
              Text("""
margin: const EdgeInsets.all(n),
"""),
              SnippetContainer("pr1 - pr50"),
              Text("""
margin: const EdgeInsets.only(right: n,),
"""),
              SnippetContainer("pl1 - pl50"),
              Text("""
margin: const EdgeInsets.only(left: n,),
"""),
              SnippetContainer("pt1 - pt50"),
              Text("""
margin: const EdgeInsets.only(top: n,),
"""),
              SnippetContainer("pb1 - pb50"),
              Text("""
margin: const EdgeInsets.only(bottom: n,),
"""),
              SnippetContainer("pv1 - pv50"),
              Text("""
padding: const EdgeInsets.symmetric(vertical: n),
"""),
              SnippetContainer("ph1 - ph50"),
              Text("""
padding: const EdgeInsets.symmetric(horizontal: n),
"""),
              Divider(),
              SnippetContainer("ma"),
              Text("""
margin: const EdgeInsets.all(),
"""),
              SnippetContainer("m1 - m50"),
              Text("""
margin: const EdgeInsets.all(n),
"""),
              SnippetContainer("mr1 - mr50"),
              Text("""
margin: const EdgeInsets.only(right: n,),
"""),
              SnippetContainer("ml1 - ml50"),
              Text("""
margin: const EdgeInsets.only(left: n,),
"""),
              SnippetContainer("mt1 - mt50"),
              Text("""
margin: const EdgeInsets.only(top: n,),
"""),
              SnippetContainer("mb1 - mb50"),
              Text("""
margin: const EdgeInsets.only(bottom: n,),
"""),
              SnippetContainer("mv1 - mv50"),
              Text("""
margin: const EdgeInsets.symmetric(vertical: n),
"""),
              SnippetContainer("mh1 - mh50"),
              Text("""
margin: const EdgeInsets.symmetric(horizontal: n),
"""),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgCommonView> createState() => CgCommonController();
}
