import 'package:flutter/material.dart';
import 'package:flutter_web/pages/About.dart';
import 'package:flutter_web/pages/Contact.dart';
import 'package:flutter_web/pages/Porfolio.dart';
import 'package:flutter_web/pages/Services.dart';
import 'package:hexcolor/hexcolor.dart';

import '../colors_const.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  final PageController _pageController = PageController();
  List<String> menuItems = [
    "About",
    "Services",
    "Portfolio",
    "Contact"
  ];
  void _onTappedBar(int value) {
    setState(() {
      selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return

      Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: size.width * 0.75,
          height: 50,
          color: ColorConst.lightWidgetColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  List.generate(
              menuItems.length,
                  (index) => buildMenuItem(index),
            ),




                ),
        ),


        Expanded(
          child: PageView(
            onPageChanged: (pageIndex) {
              setState(() {
                selectedIndex = pageIndex;
                hoverIndex = pageIndex;
              });
            },
            controller: _pageController,
            children: [
About(),
              Services(),
              Portfolio(),
              Contact()
            ],
          ),
        )
      ],
    );
  }

  Widget buildMenuItem(int index) => InkWell(
    onTap: () {
      setState(() {
        selectedIndex = index;

        _pageController.jumpToPage(selectedIndex);
      });
    },
    onHover: (value) {
      setState(() {
        value ? hoverIndex = index : hoverIndex = selectedIndex;
      });
    },
    child: Container(
      constraints: const BoxConstraints(minWidth: 122),
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            menuItems[index],
            style: TextStyle(color:  selectedIndex == index || hoverIndex == index ?ColorConst.secondaryColor: Colors.black,),
          ),
          // Hover
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom:
            selectedIndex != index && hoverIndex == index ? -20 : -32,
            child: Image.asset("images/Hover.png"),
          ),
          // Select
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -20 : -32,
            child: Image.asset("images/Hover.png"),
          ),
        ],
      ),
    ),
  );
}
