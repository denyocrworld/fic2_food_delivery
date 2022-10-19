import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class DemoView extends StatefulWidget {
  const DemoView({Key? key}) : super(key: key);

  Widget build(context, DemoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ExListView(
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DemoView> createState() => DemoController();
}
