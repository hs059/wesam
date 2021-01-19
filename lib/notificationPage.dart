import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
enum HusainStATE {SLEAB , RUN , CODING}
class NotificationPage  extends StatelessWidget {


  HusainStATE huss;
   final bool voucher  ;
  NotificationPage({this.voucher=true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
      Container(
          alignment: Alignment.center,
          height: 288.97,
          width: double.infinity,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/svg/wBackGround.svg',
                width: double.infinity,
              ),
              voucher?  Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Stack(
                    overflow: Overflow.visible,
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: 172,
                        height: 172,
                        child: SvgPicture.asset(
                          'assets/svg/wBurgers.svg',
                          width: 172,
                          height: 172,
                        ),
                      ),
                      Positioned(
                        top: -40,
                        child:Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/svg/btn.google.svg',
                            width: 84,
                            height: 84,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
                  :   Container(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  'assets/svg/wTelescope.svg',
                  width: 178.07,
                  height: 200.2,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 27,
        ),
        Column(
          children: [
            Text(
              voucher?'Voucher'  : 'Badge',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xffA9A9A9),
              ),
            ),
            Text(
              voucher?'30% Off up to 10 JD':'Predictor',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
                color: Color(0xff171725),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Column(
          children: [
            Text(
              'Congratulations!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xff171725),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have reached level 2 now !',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Color(0xff171725),
              ),
              textAlign: TextAlign.center,
            ),
            Visibility(
                visible: voucher,
                child:  Column(

                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Next Door Café',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff171725),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),)
          ],
        ),
        SizedBox(
          height:voucher?76: 100,
        ),
        Text(
          'Share it with friends',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18,
            color: Color(0xff171725),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 23,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconText(
            iconPath:  'assets/svg/btn.google.svg',
              title: 'WhatsApp',
            ),
            SizedBox(
              width: 53,
            ),
            iconText(
              iconPath:  'assets/svg/btn.google.svg',
              title: 'WhatsApp',
            ),
            SizedBox(
              width: 53,
            ),
            iconText(
              iconPath:  'assets/svg/btn.google.svg',
              title: 'WhatsApp',
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        buttonWessam (),
      ],
    );
  }

  Widget iconText({String iconPath, String title}) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 46,
          child: SvgPicture.asset(
            iconPath,
            height: 46,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xff171725),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget buttonWessam (){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Continue',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: Color(0xff171725),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          alignment: Alignment.center,
          height: 37,
          padding: EdgeInsets.symmetric(horizontal:30,vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xffFFE600),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Center(
            child: Text(
              voucher? 'Details': 'My Badges',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff171725),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
