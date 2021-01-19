import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdItem extends StatelessWidget {
  final String imagePath, title, subTitle;

  ThirdItem({this.imagePath, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 83.7,
        ),
        Container(
          alignment: Alignment.center,
          width: 281.41,
          height: 263.14,
          child: SvgPicture.asset(
            imagePath,
            width: double.infinity,
          ),
        ),
        SizedBox(
          height: 54.2,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Color(0xff171725),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: Color(0xff171725),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        buttonWessam(),
      ],
    );
  }

  Widget buttonWessam() {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 204,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xffFFE600),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Center(
            child: Text(
              'Next Matches',
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
          'Home',
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
