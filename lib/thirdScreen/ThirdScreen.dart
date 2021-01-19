import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'file:///E:/Programming/Dart/studyProjects/wessam/lib/fourthScreen/widgets/appBar.dart';
import 'package:wessam/notificationPage.dart';
import 'package:wessam/thirdScreen/widgets/thirdItem.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarWessam(context, 'Unlock Voucher'),
        body: ThirdItem(
          imagePath: 'assets/svg/wOnWay.svg',
          title: 'Oh no, You didn\'t check-in!',
          subTitle:'We apologize for not being able to unlock this voucher for you, please make sure to check-in for the next game.',
        ));
  }
}
