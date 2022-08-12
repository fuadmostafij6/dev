
import 'package:flutter/material.dart';
import 'package:flutter_web/Widget/progress.dart';

import '../colors_const.dart';

Widget skillBuilder() {
  return AspectRatio(aspectRatio: 1.23,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: ColorConst.lightBgColor,
        child: ListView(
          primary: false,
          shrinkWrap: true,
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
    ),);
}