import 'package:ahd/api_url.dart';
import 'package:ahd/helpers/base_dio_app.dart';
import 'package:ahd/helpers/requests_enum.dart';
import 'package:ahd/models/auth/login_model.dart';

class LoginApi extends BaseDioApi {
  LoginModel loginRequestModel;

  LoginApi({
    required this.loginRequestModel,
  }) : super(loginLink);

  @override
  body() {
    return loginRequestModel.toJson();
  }

  Future fetch() async {
    final response = await sendRequest(requests.post, isAuthenticated: false);
    return response;
  }
}
