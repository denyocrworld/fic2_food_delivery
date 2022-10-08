import 'package:fhe_template/core.dart';
import 'package:fhe_template/shared/widget/list/dragon_list.dart';
import 'package:flutter/material.dart';

class HttpExampleView extends StatefulWidget {
  const HttpExampleView({Key? key}) : super(key: key);

  Widget build(context, HttpExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Http Examples"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            Expanded(
              child: DragonList(
                futureBuilder: (page) {
                  var url = "http://localhost:8080/api/blogs?page=$page";
                  var token = "dev_token";

                  debugPrint("url : $url");

                  return Dio().get(
                    url,
                    options: Options(headers: {
                      "Authorization": "Bearer $token",
                    }),
                  );
                },
                builder: (index, item) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green[200],
                        child: Text("${index + 1}"),
                      ),
                      title: Text("${item["title"]}"),
                      subtitle: Text("${item["description"]}"),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<HttpExampleView> createState() => HttpExampleController();
}
