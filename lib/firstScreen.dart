


import 'package:flutter/material.dart';
import 'package:wessam/notificationPage.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.white,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(

            width: double.infinity,
            child: NotificationPage(
             voucher: false,
            ),
          ),
        ],
      ),
    );
  }
}
