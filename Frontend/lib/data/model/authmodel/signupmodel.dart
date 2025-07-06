class SignInModel {
  final String phone_number ;
  final String password;

  SignInModel({
    required this.phone_number,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "phone_number": phone_number,
        "password": password,
      };

}
