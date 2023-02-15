import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgCircleAvatarView extends StatefulWidget {
  const CgCircleAvatarView({Key? key}) : super(key: key);

  Widget build(context, CgCircleAvatarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgCircleAvatar"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SnippetContainer("circle"),
              //#TEMPLATE circle
              CircleAvatar(
                radius: 28.0,
                backgroundColor: Colors.green,
              ),
              //#END
              SnippetContainer("circle_image_lg"),
              //#TEMPLATE circle_image_lg
              CircleAvatar(
                radius: 28.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              //#END
              SnippetContainer("circle_image_md"),
              //#TEMPLATE circle_image_md
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              //#END

              SnippetContainer("circle_image"),
              //#TEMPLATE circle_image
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              //#END

              SnippetContainer("circle_image_sm"),
              //#TEMPLATE circle_image_sm
              CircleAvatar(
                radius: 16.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              //#END

              SnippetContainer("circle_image_xs"),
              //#TEMPLATE circle_image_xs
              CircleAvatar(
                radius: 12.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              //#END

              Divider(),

              SnippetContainer("circle_icon_lg"),
              //#TEMPLATE circle_icon_lg
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 28.0,
                child: Icon(
                  Icons.add,
                  size: 28.0,
                ),
              ),
              //#END

              SnippetContainer("circle_icon_md"),
              //#TEMPLATE circle_icon_md
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.add),
              ),
              //#END

              SnippetContainer("circle_icon"),
              //#TEMPLATE circle_icon
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.add),
              ),
              //#END

              SnippetContainer("circle_icon_sm"),
              //#TEMPLATE circle_icon_sm
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 16.0,
                child: Icon(
                  Icons.add,
                  size: 16.0,
                ),
              ),
              //#END

              SnippetContainer("circle_icon_xs"),
              //#TEMPLATE circle_icon_xs
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 12.0,
                child: Icon(
                  Icons.add,
                  size: 12.0,
                ),
              ),
              //#END
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgCircleAvatarView> createState() => CgCircleAvatarController();
}
