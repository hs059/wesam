import 'package:flutter/cupertino.dart';

class FirstGrid{
  String name ,imagePath ;
  bool lock ;
  FirstGrid({@required this.name,@required this.imagePath,this.lock = true});
}


List<FirstGrid> firstGridList = [
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wTelescope.svg',lock: false),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wTelescope.svg',lock: false),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wTelescope.svg',lock: false),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wTelescope.svg',lock: false),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wTelescope.svg',lock: false),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wLock.svg',lock: true),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wLock.svg',lock: true),
  FirstGrid(name:'Predictor',imagePath: 'assets/svg/wLock.svg',lock: true),

] ;