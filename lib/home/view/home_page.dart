import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ft_bloc_login2/authentication/authentication.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'User ID: ${context.bloc<AuthenticationBloc>().state.user.id}',
            ),
            RaisedButton(
              child: const Text('Logout'),
              onPressed: () {
                context.bloc<AuthenticationBloc>().add(AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
