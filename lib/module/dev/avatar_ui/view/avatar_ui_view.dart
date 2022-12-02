import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/module/dev/avatar_ui/view/avatar_ui_view.dart

import '../controller/avatar_ui_controller.dart';
=======
import '../widget/avatar_ui.dart';
import 'package:example/core.dart';
>>>>>>> b5b206a3e8f6f394a9e0d9b7160786169dd9ded6:lib/module/avatar_ui/view/avatar_ui_view.dart

class AvatarUiView extends StatefulWidget {
  const AvatarUiView({Key? key}) : super(key: key);

  Widget build(context, AvatarUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatars"),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          //AvatarContainer
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const AvatarContainer(
                      url: "https://picsum.photos/1001",
                    ).xs(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarContainer -xs"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarContainer(
                      url: "https://picsum.photos/1002",
                    ).sm(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarContainer -sm"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarContainer(
                      url: "https://picsum.photos/1003",
                    ).md(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarContainer -md"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarContainer(
                      url: "https://picsum.photos/1004",
                    ).lg(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarContainer -lg"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarContainer(
                      url: "https://picsum.photos/1005",
                    ).xl(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarContainer -xl"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          //AvatarCircle
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const AvatarCircle(
                      url: "https://picsum.photos/1010",
                    ).xs(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarCircle -xs"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarCircle(
                      url: "https://picsum.photos/1006",
                    ).sm(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarCircle -sm"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarCircle(
                      url: "https://picsum.photos/1007",
                    ).md(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarCircle -md"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarCircle(
                      url: "https://picsum.photos/1008",
                    ).lg(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarCircle -lg"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    const AvatarCircle(
                      url: "https://picsum.photos/1009",
                    ).xl(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("AvatarCircle -xl"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          //ContainerBackground
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ContainerBackground(
                      backgroundColor: successColor,
                      title: "xs",
                    ).xs(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("ContainerBackground -xs"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    ContainerBackground(
                      backgroundColor: warningColor,
                      title: "sm",
                    ).sm(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("ContainerBackground -sm"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    ContainerBackground(
                      backgroundColor: dangerColor,
                      title: "md",
                    ).md(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("ContainerBackground -md"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    ContainerBackground(
                      backgroundColor: infoColor,
                      title: "lg",
                    ).lg(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("ContainerBackground -lg"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    ContainerBackground(
                      backgroundColor: primaryColor,
                      title: "xl",
                    ).xl(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("ContainerBackground -xl"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          //CircleBackground
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleBackground(
                      backgroundColor: successColor,
                      title: "xs",
                    ).xs(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("CircleBackground -xs"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    CircleBackground(
                      backgroundColor: warningColor,
                      title: "sm",
                    ).sm(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("CircleBackground -sm"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    CircleBackground(
                      backgroundColor: dangerColor,
                      title: "md",
                    ).md(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("CircleBackground -md"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    CircleBackground(
                      backgroundColor: infoColor,
                      title: "lg",
                    ).lg(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("CircleBackground -lg"),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    CircleBackground(
                      backgroundColor: primaryColor,
                      title: "xl",
                    ).xl(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text("CircleBackground -xl"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          //RoundedImage,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    RoundedImage(
                      url: "https://picsum.photos/1001",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("RoundedImage"),
                  ],
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: const [
                    Thumbnail(
                      height: 80,
                      width: 120,
                      url: "https://picsum.photos/1000",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Thumbnail"),
                  ],
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: const [
                    CircleThumbnail(
                      height: 80,
                      width: 80,
                      url: "https://picsum.photos/1020",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("CircleThumbnail"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ],
      ),
    );
  }

  @override
  State<AvatarUiView> createState() => AvatarUiController();
}
