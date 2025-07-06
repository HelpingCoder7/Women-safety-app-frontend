// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:women_safety_app/data/model/authmodel/signupmodel.dart';

abstract class ServerEndService {
  Future<Either> SignInUser(SignInModel signInModel);
}

class ServerEndServiceImpl extends ServerEndService {
  @override
  Future<Either> SignInUser(SignInModel signInModel) async {
    try {
      // final uri = Uri.parse("http://10.0.2.2:8000/loginuser/");

      final uri =
          Uri.parse("https://flutterwomensafety.onrender.com/loginuser/");
      final body = json.encode(signInModel.toJson());

      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
        },
        body: body,
      );

      if (response.statusCode == 200) {
        return const Right('success');
      } else if (response.statusCode == 404) {
        return const Left("User not found");
      } else {
        return const Left("Login failed");
      }
    } catch (e) {}
    return left('something went wrong');
  }
}
