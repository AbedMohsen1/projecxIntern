// ignore_for_file: unnecessary_this

class LoginModel {
  String? email;
  String? password;

  LoginModel({this.email, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
