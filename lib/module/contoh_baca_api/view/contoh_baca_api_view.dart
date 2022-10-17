import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../controller/contoh_baca_api_controller.dart';

class ContohBacaApiView extends StatefulWidget {
  const ContohBacaApiView({Key? key}) : super(key: key);

  Widget build(context, ContohBacaApiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ContohBacaApi"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //future_example
            FutureBuilder(
              future: Dio().get(
                "https://reqres.in/api/users",
                options: Options(
                  contentType: "application/json",
                ),
              ),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) return Container();
                Response response = snapshot.data;
                Map obj = response.data;
                List items = obj["data"];

                return ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = items[index];

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
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ContohBacaApiView> createState() => ContohBacaApiController();
}
