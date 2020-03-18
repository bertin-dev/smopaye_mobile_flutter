

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Hello Second Activity",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30
            ),
          ),
        ),
      ),
    );
  }
}