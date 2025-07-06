import 'package:dartz/dartz.dart';
import 'package:women_safety_app/data/model/authmodel/signupmodel.dart';
import 'package:women_safety_app/domain/repository/Auth/Signuprepo.dart';

import '../../../servicelocator.dart';
import '../../network/Auth/Signinuser.dart';


class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either> Signin (SignInModel signInModel) async {
    return await sl<ServerEndService>().SignInUser(signInModel);
  }
}
