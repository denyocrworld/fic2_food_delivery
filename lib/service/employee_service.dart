import 'package:dio/dio.dart';

class EmployeeService {
  static Future<List<Map<String, dynamic>>> getEmployeeList() async {
    Response response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        contentType: "application/json",
      ),
    );
    List users = response.data["data"];
    List<Map<String, dynamic>> items = [];

    for (var user in users) {
      items.add({
        "label": user["first_name"],
        "value": user["id"],
      });
    }
    return items;
  }
}
