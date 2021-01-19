


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wessam/notificationPage.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.white,

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 66.8,
            ),
            Container(
              alignment: Alignment.center,
              width: 244.5,
              height: 278.7,
              child: SvgPicture.asset(
                'assets/svg/wNotification.svg',
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 108.6,
            ),
            Text(
              'Enable Notifications',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Color(0xff171725),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Get push notifications for matches of your favorite teams',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff171725),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            buttonWessam (),
          ],
        ),
      ),
    );
  }
  Widget buttonWessam (){
    return  Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 204,
          padding: EdgeInsets.symmetric(horizontal:30,vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xffFFE600),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Center(
            child: Text(
              'My Badges',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff171725),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 27,
        ),
        Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xff171725),
          ),
        ),
      ],
    );
  }
}
