import 'package:http/http.dart' as http;
import 'package:takeaway_app/config/env/env.dart';

class AuthService {
  static Future<dynamic> loginUri(String username, String password) async {
    String url = '${Environement.SSO_URL}/protocol/openid-connect/token';
    Map<String, String> headers = {
      'content-type': 'application/x-www-form-urlencoded',
      'cache-control': 'no-cache'
    };

    Map<String, String> data = {
      'client_id': Environement.CLIENT_ID,
      'username': username,
      'password': password,
      'grant_type': 'password'
    };

    http.Response response =
        await http.post(Uri.parse(url), headers: headers, body: data);

    print('body ${response.body}');
    print('statusCode ${response.statusCode}');

    if (response.statusCode == 200) {
      return response;
    } else if (response.statusCode == 401) {
      throw ('user/password invalid');
    } else {
      throw ('Server Error');
    }
  }
}
