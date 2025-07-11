import 'package:ahd/api_url.dart';
import 'package:ahd/helpers/base_dio_app.dart';
import 'package:ahd/helpers/requests_enum.dart';

class GetExclusiveCoupons extends BaseDioApi {
  GetExclusiveCoupons() : super(getExclusiveCoupons);

  Future fetch() async {
    final response = await sendRequest(requests.get, isAuthenticated: true);
    return response;
  }
}
