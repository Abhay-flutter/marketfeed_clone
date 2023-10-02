import 'package:flutter/material.dart';
import 'package:marketfeed_clone/view/login_screen/register_screen.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("LOGOUT !"),
      content: Text("Don you want to Logout ?"),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ),
              (route) => false),
          child: Text("Yes"),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, "OK"),
          child: Text("NO"),
        ),
      ],
    );
  }
}
