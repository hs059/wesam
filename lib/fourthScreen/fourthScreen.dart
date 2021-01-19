import 'package:flutter/material.dart';
import 'file:///E:/Programming/Dart/studyProjects/wessam/lib/fourthScreen/widgets/appBar.dart';

import 'widgets/firstGrid.dart';
import 'widgets/gridItem.dart';

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
            return GridItem(
              imageGridPath: firstGridList[index].imagePath,
              nameItem: firstGridList[index].name,
              lock: firstGridList[index].lock,
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
              crossAxisSpacing: 2),
        ),
      ),
    );
  }
}
