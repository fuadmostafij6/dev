
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8),
      height: 80,
      width: size.width*0.7,
      color: HexColor("#F8F9FA"),
      child: Row(

      ),
    );
  }
}
