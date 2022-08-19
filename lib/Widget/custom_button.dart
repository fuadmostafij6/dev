


import 'package:flutter/material.dart';
import 'package:flutter_web/colors_const.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback clickCallback;
  const CustomButton({Key? key, required this.text, required this.clickCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed:()=>clickCallback(), style: TextButton.styleFrom(backgroundColor: Colors.black,), child: Text(text, style: TextStyle(color: ColorConst.lightBgColor),),);
  }
}
