import 'package:blotest/cubit/user_state.dart';
import 'package:blotest/models/user.dart';
import 'package:blotest/services/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  final UsersRepository usersRepository;
  UserCubit(this.usersRepository) : super(UserEmptyState());

  Future<void> fetchUsers() async {
    try {
      emit(UserLoadingState());
      final List<User> _loadedUserList = await usersRepository.getAllUsers();
      emit(UserLoadedState(loadedUser: _loadedUserList));
    } catch (e) {
      emit(UserErrorState());
    }
  }

  Future<void> clearUsers() async {
    emit(UserEmptyState());
  }
}
