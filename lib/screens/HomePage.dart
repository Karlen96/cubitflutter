import 'package:blotest/cubit/user_cubit.dart';
import 'package:blotest/services/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:blotest/widgets/ActionButtons.dart';
import 'package:blotest/widgets/UserList.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final usersRepository = UsersRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (context) => UserCubit(usersRepository),
      child: Scaffold(
        appBar: AppBar(
          title: Text('bloc'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ActionButtons(),
            Expanded(
              child: UserList(),
            )
          ],
        ),
      ),
    );
  }
}
