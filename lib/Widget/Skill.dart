
import 'package:flutter/material.dart';
import 'package:flutter_web/Widget/progress.dart';

import '../colors_const.dart';

Widget skillBuilder() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: ColorConst.lightBgColor,
     // height: MediaQuery.of(context).size.height*0.7,
      child: Column(

        children: const [
          SizedBox(height: 20,),
          Center(child: Text("Skill")),
          SizedBox(height: 20,),
          AnimatedLinearProgressIndicator(label: 'Flutter', percentage:0.85 ,),

          AnimatedLinearProgressIndicator(label: 'Api', percentage:0.8 ,),
          AnimatedLinearProgressIndicator(label: 'Firebase', percentage:0.75 ,),
          AnimatedLinearProgressIndicator(label: 'Local DB', percentage:0.65 ,),
          AnimatedLinearProgressIndicator(label: 'React', percentage:0.6 ,),
          AnimatedLinearProgressIndicator(label: 'django rest framework', percentage:0.5 ,),
          SizedBox(height: 20,),
        ],
      ),
    ),
  );
}