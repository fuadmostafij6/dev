import 'package:flutter/material.dart';
import 'package:flutter_web/Widget/responsive.dart';
import 'package:flutter_web/colors_const.dart';
import 'package:flutter_web/constPath.dart';
import 'package:flutter_web/pages/NavBar.dart';
import 'package:flutter_web/pages/profile_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

import 'MobilePages/aboutMobile.dart';
import 'ScrollBihaviour/scroll.dart';
import 'Widget/Coding.dart';
import 'Widget/Skill.dart';
import 'Widget/Timeline.dart';
import 'Widget/myinfo.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'MRF',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme() ,

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      ResponsiveLayout(

          mobileBody:

      Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: Drawer(
          elevation: 0,
          child: ListView(
            shrinkWrap: true,
            primary: false,


            children: [
              const SizedBox(height: 20.0,),
              myInfo(context),
              timelineWidget(),
              skillBuilder(),
              codingBuilder()





            ],
          ),

        ),

        appBar: AppBar(

          leading:  IconButton(onPressed: ()=>_scaffoldKey.currentState!.openDrawer(), icon: Icon(Icons.person, color: ColorConst.secondaryColor,),),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),

        body:  ListView(
          shrinkWrap: true,
          primary: false,
          children: [
             AboutMobile(),
          ],
        ),
      ),

          desktopBody: Scaffold(
        backgroundColor: ColorConst.lightBgColor,
        body:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Expanded(
                flex: size.width > tabWidth?  2:3,
                child: ProfileCard()),
            Expanded(
                flex:size.width > tabWidth?  7: 6,
                child: NavBar()),
          ],
        ),
      )

      )
      ;
  }
}
