


import 'package:flutter/material.dart';
import 'package:flutter_web/colors_const.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){}, style: TextButton.styleFrom(backgroundColor: Colors.black,), child: Text(text, style: TextStyle(color: ColorConst.lightBgColor),),);
  }
}
