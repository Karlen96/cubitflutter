import 'package:blotest/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserCubit userCubit = BlocProvider.of<UserCubit>(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('load'),
          onPressed: () {
            userCubit.fetchUsers();
          },
          color: Colors.green,
        ),
        SizedBox(
          width: 10,
        ),
        RaisedButton(
          child: Text('clear'),
          onPressed: () {
            userCubit.clearUsers();
          },
          color: Colors.red,
        )
      ],
    );
  }
}
