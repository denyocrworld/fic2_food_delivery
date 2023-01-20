import 'package:dio/dio.dart';

/*
Backend Developer
- Menyediakan atau tidak

- Letsencrypt 
- Hosting (Hostinger, ) => CS => Update SSL
*/
class UserService {
  static Future<List> getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      // "http://104.26.11.213/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }
}

void main() async {
  List users = await UserService.getUsers();
  print(users);
}
