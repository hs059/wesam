import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget appBarWessam (BuildContext context,String title){
  return  AppBar(
    //brightness change color(dark or light) system icon like pattery and time in stutes bar
    brightness: Brightness.light,
    backgroundColor: Colors.white,

    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22,
        color: Color(0xff171725),
      ),
    ),
    centerTitle: true,
    elevation: 0.0,
    leading:             Row(
      children: [
        SizedBox(
          width: 30,
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            'assets/svg/wLeftArrow.svg',
            width: 22.2,
            height: 15.61,
          ),
        ),
      ],
    ),
  ) ;
}