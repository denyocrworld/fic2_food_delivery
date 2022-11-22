import 'package:example/core_package.dart';

class AuthService {
  static Future<Map> login({
    required String email,
    required String password,
  }) async {
    var response = await Dio().post(
      "http://127.0.0.1:8080/deny/api/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "email": email,
        "password": password,
      },
    );
    Map obj = response.data;
    return obj;
  }
}
