import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserDataSourceBuilder extends StatelessWidget {
  final Widget Function(List<Map<String, dynamic>> items) builder;
  const UserDataSourceBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Dio().get(
        "https://reqres.in/api/users",
        options: Options(
          contentType: "application/json",
        ),
      ),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) return Container();
        Response obj = snapshot.data;
        List users = obj.data["data"];
        List<Map<String, dynamic>> items = [];

        for (var user in users) {
          items.add({
            "label": user["first_name"],
            "value": user["id"],
          });
        }

        return builder(items);
      },
    );
  }
}
