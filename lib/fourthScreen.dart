
import 'package:flutter/material.dart';
import 'package:wessam/appBar.dart';

import 'firstGrid.dart';
import 'gridItem.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWessam(context, 'My Badges'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.topCenter,
        child: GridView.builder(
          itemBuilder: (context, index) {
            return  GridItem(
             imageGridPath: firstGridList[index].imagePath,
             nameItem: firstGridList[index].name,
            );
          },
          physics: const BouncingScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          itemCount: firstGridList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2
          ),
        ),
      ),
    );
  }
}
