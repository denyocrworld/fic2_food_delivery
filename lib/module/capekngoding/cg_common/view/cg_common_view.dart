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
              SnippetContainer("cRed , cBlue, cYellow, cRed300 , ..."),
              Text("""
color: Colors.red,
color: Colors.blue,
color: Colors.yellow,
color: Colors.red[300],
"""),
              Divider(),
              SnippetContainer("mq"),
              Text("""
MediaQuery.of(context)
"""),
              SnippetContainer("mqs"),
              Text("""
MediaQuery.of(context).size
"""),
              SnippetContainer("mqw"),
              Text("""
MediaQuery.of(context).size.width,
"""),
              SnippetContainer("mqh"),
              Text("""
MediaQuery.of(context).size.height
"""),
              SnippetContainer("w100"),
              Text("""
width: MediaQuery.of(context).size.width,
"""),
              SnippetContainer("h100"),
              Text("""
height: MediaQuery.of(context).size.height,
"""),
              Divider(),
              SnippetContainer("sw1 - sw50"),
              Text("""
const SizedBox(
  width: n,
),
"""),
              SnippetContainer("sh1 - sh50"),
              Text("""
const SizedBox(
  height: n,
),
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
              Divider(),
              SnippetContainer("sz1 - sz50"),
              Text("""
size: n,
"""),
              SnippetContainer("rd1 - rd50"),
              Text("""
radius: n,
"""),
              SnippetContainer("fs1 - fs50"),
              Text("""
fontSize: n,
"""),
              Divider(),
              SnippetContainer("crostart"),
              Text("""
crossAxisAlignment: CrossAxisAlignment.start,
"""),
              SnippetContainer("crocenter"),
              Text("""
crossAxisAlignment: CrossAxisAlignment.center,
"""),
              SnippetContainer("croend"),
              Text("""
crossAxisAlignment: CrossAxisAlignment.end,
"""),
              SnippetContainer("mainstart"),
              Text("""
mainAxisAlignment: MainAxisAlignment.start,
"""),
              SnippetContainer("mainend"),
              Text("""
mainAxisAlignment: MainAxisAlignment.end,
"""),
              SnippetContainer("maincenter"),
              Text("""
mainAxisAlignment: MainAxisAlignment.center,
"""),
              SnippetContainer("mainspacebetween"),
              Text("""
mainAxisAlignment: MainAxisAlignment.spaceBetween,
"""),
              SnippetContainer("mainspacearound"),
              Text("""
mainAxisAlignment: MainAxisAlignment.spaceAround,
"""),
              SnippetContainer("mainspaceevently"),
              Text("""
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
"""),
              Divider(),
              SnippetContainer("axisv"),
              Text("""
scrollDirection: Axis.vertical,
"""),
              SnippetContainer("axish"),
              Text("""
scrollDirection: Axis.horizontal,
"""),
              Divider(),
              SnippetContainer("mat"),
              Text("""
import 'package:flutter/material.dart';
"""),
              SnippetContainer("cup"),
              Text("""
import 'package:flutter/cupertino.dart';
"""),
              Divider(),
              SnippetContainer("item"),
              Text("""
item[""]
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
