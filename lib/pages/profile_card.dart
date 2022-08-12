


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widget/Coding.dart';
import '../Widget/Skill.dart';
import '../Widget/Timeline.dart';
import '../Widget/custom_button.dart';
import '../Widget/myinfo.dart';
import '../Widget/progress.dart';
import '../colors_const.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: ColorConst.lightWidgetColor,
      body: Center(
        child: Row(
          children: [
            Expanded(

                flex: 2,
                child: Drawer(
                  elevation: 0,
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,

                    children: [
                      const SizedBox(height: 20.0,),
                      myInfo(context),
                      timelineWidget(),
                      skillBuilder(),
                      codingBuilder()




                    ],
                  ),

            ))
          ],
        ),
      ),

    );
  }







}
