import 'package:blotest/cubit/user_cubit.dart';
import 'package:blotest/cubit/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is UserErrorState) {
          return Center(
            child: Text('error'),
          );
        }
        if (state is UserLoadedState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListTile(
          leading: Text(
            'ID 1',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          title: Column(
            children: <Widget>[
              Text(
                'My name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'test@Email',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Text(
                    'testPhone',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
    // ListView.builder(
    //   itemCount: 20,
    //   itemBuilder: (context, index) => Container(
    //     // color: index % 2 == 0 ? Colors.white : Colors.blue[50],
    //     child: ListTile(
    //       leading: Text(
    //         'ID 1',
    //         style: TextStyle(fontWeight: FontWeight.bold),
    //       ),
    //       title: Column(
    //         children: <Widget>[
    //           Text(
    //             'My name',
    //             style: TextStyle(fontWeight: FontWeight.bold),
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: <Widget>[
    //               Text(
    //                 'test@Email',
    //                 style: TextStyle(fontStyle: FontStyle.italic),
    //               ),
    //               Text(
    //                 'testPhone',
    //                 style: TextStyle(fontStyle: FontStyle.italic),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
