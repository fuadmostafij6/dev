import 'package:flutter/material.dart';

import '../colors_const.dart';

AspectRatio myInfo(BuildContext context) {
  return AspectRatio(aspectRatio: 1.23,

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: ColorConst.lightBgColor ,

        child: Column(
          children:  [
            const Spacer(flex: 2),
            CircleAvatar(
              backgroundColor: ColorConst.lightBgColor ,
              radius: 60,
              child:  ClipOval(
                child: Image.network(

                  'https://raw.githubusercontent.com/fuadmostafij6/portfolio/main/src/component/Profile/asset/mostafij.png',
                  height: 120,
                  width: 120,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const Spacer(),
            Text(
              "Md Mostafijur Rahman",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    ),
  );
}