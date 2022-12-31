import 'package:flutter/material.dart';
import 'package:example/core.dart';

class CgHyperuiListView extends StatefulWidget {
  const CgHyperuiListView({Key? key}) : super(key: key);

  Widget build(context, CgHyperuiListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgHyperuiList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE q_list_view
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
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgHyperuiListView> createState() => CgHyperuiListController();
}
