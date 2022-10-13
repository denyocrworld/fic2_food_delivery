import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        List menus = [
          {
            "icon": Icons.abc,
            "label": "Home",
            "onTap": () {},
          },
          {
            "icon": Icons.tiktok,
            "label": "Tiktok",
            "onTap": () {},
          },
          {
            "icon": Icons.facebook,
            "label": "Facebook",
            "onTap": () {},
          },
          {
            "icon": Icons.access_alarm,
            "label": "Task",
            "onTap": () {},
          },
          {
            "icon": Icons.developer_board,
            "label": "Developer",
            "onTap": () {},
          },
          {
            "icon": Icons.web,
            "label": "Website",
            "onTap": () {},
          },
          {
            "icon": Icons.mobile_screen_share_rounded,
            "label": "Share",
            "onTap": () {},
          },
          {
            "icon": Icons.event,
            "label": "Event",
            "onTap": () {},
          },
        ];

        return Wrap(
          children: List.generate(
            menus.length,
            (index) {
              var item = menus[index];

              var size = constraint.biggest.width / 4;

              return SizedBox(
                width: size,
                height: size,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                    animationDuration: const Duration(milliseconds: 1000),
                    backgroundColor: Colors.transparent,
                    splashFactory: InkSplash.splashFactory,
                    shadowColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPressed: () => item["onTap"](),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item["icon"],
                        color: Colors.blueGrey,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "${item["label"]}",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 8.0,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
