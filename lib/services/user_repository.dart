import 'package:blotest/services/user_api_provider.dart';
import 'package:blotest/models/user.dart';

class UsersRepository {
  UserProvider _userProvider = UserProvider();

  Future<List<User>> getAllUsers() {
    return _userProvider.getUser();
  }
}
