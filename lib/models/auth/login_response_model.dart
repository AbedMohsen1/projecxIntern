class LoginResponseModel {
  String? token;
  String? fullName;
  String? imagePath;

  LoginResponseModel({this.token, this.fullName, this.imagePath});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    fullName = json['fullName'];
    imagePath = json['imagePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['fullName'] = this.fullName;
    data['imagePath'] = this.imagePath;
    return data;
  }
}
