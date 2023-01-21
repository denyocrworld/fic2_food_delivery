import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgHyperuiListView extends StatefulWidget {
  const CgHyperuiListView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiListController controller) {
    controller.view = this;

    return QScaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiList"),
        actions: const [],
      ),
      body: Column(
        children: [
          QListView(
            shrinkWrap: true,
            futureBuilder: (page) async {
              var response = await Dio().get(
                "https://reqres.in/api/users",
                options: Options(
                  headers: {
                    "Content-Type": "application/json",
                  },
                ),
              );
              return response;
            },
            builder: (index, item) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                      item["avatar"],
                    ),
                  ),
                  title: Text("${item["first_name"]}"),
                  subtitle: Text("${item["email"]}"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  State<CgHyperuiListView> createState() => CgHyperuiListController();
}
