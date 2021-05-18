import 'package:dio/dio.dart';
import 'package:blotest/models/user.dart';

class UserProvider {
  Future<List<User>> getUser() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        print(response.data);
        final List<User> userJson =
            response.data.map((json) => User.fromJson(json)).toList();
        return userJson;
      } else {
        throw Exception('Error fetching users');
      }
    } catch (e) {
      print(e);
    }
  }
}
