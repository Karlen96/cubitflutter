abstract class UserState {}

class UserEmptyState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  List<dynamic> loadedUser;
  UserLoadedState({this.loadedUser}) : assert(loadedUser != null);
}

class UserErrorState extends UserState {}
