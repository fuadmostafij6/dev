


import 'package:flutter/material.dart';

import '../Widget/myinfo.dart';
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
      backgroundColor: ColorConst.lightBgColor,
      body: Center(
        child: Row(
          children: [
            Expanded(

                flex: 2,
                child: Drawer(
                  child: Column(

                    children: [
                      myInfo(context),
                      
                    ],
                  ),

            ))
          ],
        ),
      ),

    );
  }


}
