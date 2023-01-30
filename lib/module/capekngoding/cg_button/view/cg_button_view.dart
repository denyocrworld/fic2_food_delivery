import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:url_launcher/link.dart';

//#GROUP_TEMPLATE button
class CgButtonView extends StatefulWidget {
  const CgButtonView({Key? key}) : super(key: key);

  Widget build(context, CgButtonController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgButton"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SnippetContainer("button"),
                      //#TEMPLATE button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_stadium"),
                      //#TEMPLATE button_stadium
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_radius"),
                      //#TEMPLATE button_radius
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_continuous"),
                      //#TEMPLATE button_continuous
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_beveled"),
                      //#TEMPLATE button_beveled
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END

                      const Divider(),
                      const SnippetContainer("button_outline"),
                      //#TEMPLATE button_outline
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_outline_stadium"),
                      //#TEMPLATE button_outline_stadium
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_outline_radius"),
                      //#TEMPLATE button_outline_radius
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_outline_continuous"),
                      //#TEMPLATE button_outline_continuous
                      OutlinedButton(
                        clipBehavior: Clip.antiAlias,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          shadowColor: Colors.transparent,
                          surfaceTintColor: Colors.red,
                          side: const BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          ),
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const SnippetContainer("button_outline_beveled"),
                      //#TEMPLATE button_outline_beveled
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Save"),
                      ),
                      //#END
                      const Divider(),
                      const SnippetContainer("button_icon"),
                      //#TEMPLATE button_icon
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_stadium"),
                      //#TEMPLATE button_icon_stadium
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_radius"),
                      //#TEMPLATE button_icon_radius
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_continuous"),
                      //#TEMPLATE button_icon_continuous
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_beveled"),
                      //#TEMPLATE button_icon_beveled
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const Divider(),
                      const SnippetContainer("button_icon_outline"),
                      //#TEMPLATE button_icon_outline
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_outline_stadium"),
                      //#TEMPLATE button_icon_outline_stadium
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_outline_continuous"),
                      //#TEMPLATE button_icon_outline_continuous
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        clipBehavior: Clip.antiAlias,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                            width: 2.0,
                          ),
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_outline_radius"),
                      //#TEMPLATE button_icon_outline_radius
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const SnippetContainer("button_icon_outline_beveled"),
                      //#TEMPLATE button_icon_outline_beveled
                      OutlinedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text("Add"),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.green,
                          side: const BorderSide(
                            color: Colors.green,
                          ),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      //#END
                      const Divider(),
                      const SnippetContainer("button_icon_vertical"),
                      //#TEMPLATE button_icon_vertical
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blueGrey,
                          animationDuration: const Duration(milliseconds: 1000),
                          backgroundColor: Colors.transparent,
                          splashFactory: InkSplash.splashFactory,
                          shadowColor: Colors.transparent,
                          elevation: 0.0,
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          height: 60.0,
                          width: 60.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.home,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Menu",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 8.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //#END
                      const Divider(),
                      const SnippetContainer("floating_action_button"),
                      Text("""
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.add),
  onPressed: () {
    //
  },
),
"""
                          .trim()),
                      if (1 == 2)
                        SizedBox(
                          height: 0.0,
                          width: 0.0,
                          child: Scaffold(
                            //#TEMPLATE floating_action_button
                            floatingActionButton: FloatingActionButton(
                              child: const Icon(Icons.add),
                              onPressed: () {
                                //
                              },
                            ),
                            //#END
                          ),
                        ),
                      const Divider(),
                      const SnippetContainer("link"),
                      //#TEMPLATE link
                      Link(
                        uri:
                            Uri.parse('https://www.youtube.com/c/CapekNgoding'),
                        target: LinkTarget.blank,
                        builder: (BuildContext ctx, FollowLink? openLink) {
                          return TextButton.icon(
                            onPressed: openLink,
                            icon: const Icon(Icons.link),
                            label: const Text('Open Link'),
                          );
                        },
                      ),
                      //#END
                      const SnippetContainer("link_button"),
                      //#TEMPLATE link_button
                      Link(
                        uri:
                            Uri.parse('https://www.youtube.com/c/CapekNgoding'),
                        target: LinkTarget.blank,
                        builder: (BuildContext ctx, FollowLink? openLink) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: openLink,
                            child: const Text("Open Link"),
                          );
                        },
                      ),
                      //#END
                      const SnippetContainer("link_button_icon"),
                      //#TEMPLATE link_button_icon
                      Link(
                        uri:
                            Uri.parse('https://www.youtube.com/c/CapekNgoding'),
                        target: LinkTarget.blank,
                        builder: (BuildContext ctx, FollowLink? openLink) {
                          return OutlinedButton.icon(
                            icon: const Icon(Icons.link),
                            label: const Text("Open Link"),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.green,
                              side: const BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            onPressed: openLink,
                          );
                        },
                      ),
                      //#END
                      const SnippetContainer("link_icon"),
                      //#TEMPLATE link_icon
                      Link(
                        uri:
                            Uri.parse('https://www.youtube.com/c/CapekNgoding'),
                        target: LinkTarget.blank,
                        builder: (BuildContext ctx, FollowLink? openLink) {
                          return IconButton(
                            onPressed: openLink,
                            icon: const Icon(
                              Icons.link,
                              size: 24.0,
                            ),
                          );
                        },
                      ),
                      //#END
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgButtonView> createState() => CgButtonController();
}
