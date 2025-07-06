import 'package:dartz/dartz.dart';

import '../../../cors/usecases/usecases.dart';
import '../../../data/model/authmodel/signupmodel.dart';
import '../../../servicelocator.dart';
import '../../repository/Auth/Signuprepo.dart';

class SignInUseCase implements UseCases<Either, SignInModel> {
  @override
  Future<Either> call({SignInModel? params}) {
    return sl<AuthRepo>().Signin(params !);
  }
}
