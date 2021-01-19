

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GridItem extends StatelessWidget {
final String nameItem,imageGridPath ;
final bool lock ;
GridItem({@required this.nameItem,@required this.imageGridPath, this.lock = true});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5,),
          height: 119.2,
          width: 82.9,
          alignment: Alignment.center,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SvgPicture.asset(
                lock?'assets/svg/wLock.svg': imageGridPath,
                width: 82.9,
                height: 93.2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(nameItem),
            ],
          ),
        ),
      ],
    );
  }
}
