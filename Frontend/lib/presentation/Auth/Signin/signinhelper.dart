import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../data/model/authmodel/signupmodel.dart';
import '../../../domain/usecases/auth/signinusecase.dart';
import '../../../servicelocator.dart';

Future<Void> HandleSignIn(BuildContext context, phonenumber, password) async {
  final model = SignInModel(phone_number: phonenumber, password: password);
  final result = await sl<SignInUseCase>().call(params: model);

  result.fold(
    (l) {
      print('not success');
    },
    (r) {
      Navigator.pushNamed(context, '/bottomnav');
    },
  );
  throw 'Something went wrong';
}
