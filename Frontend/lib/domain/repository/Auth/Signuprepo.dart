import 'package:dartz/dartz.dart';

import '../../../data/model/authmodel/signupmodel.dart';

abstract class AuthRepo {
  
  Future<Either> Signin(SignInModel signInModel);
}
