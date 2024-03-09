import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Config/provider/authentication_service.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("HOME"),
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signOut();
            },
            child: Text("Sign out"),
          ),
        ],
      ),
    );
  }
}
