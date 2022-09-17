import 'dart:convert';

// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import '../routes/route.dart';

class SignUpService {
  signUp(String email, String password) async {
    http.Response response = await http.post(
      Uri.parse(Routes().signUp()),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );

    print(response.body);
  }
}
