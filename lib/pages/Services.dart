

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Model/servicesModel.dart';

import '../constPath.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {

  List<ServicesModel> servicesList = [

    ServicesModel("Build Tv Application", "assets/images/tv.png", ["Android", "iOs"]),
    ServicesModel("Build Mobile Application", "assets/images/mobile.png", ["Android", "iOs"]),
    ServicesModel("Build Web App", "assets/images/web.png", ["web"]),
    ServicesModel("AR App", "assets/images/mobile.png", ["Android", "iOs"]),

  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Center(
      child: GridView.builder(  physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: servicesList.length,
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:size.width > tabWidth? 3:2,
            crossAxisSpacing:size.width > 1040? 10.0:5,
            mainAxisSpacing:size.width > 1040? 5.0:2 ,

          ), itemBuilder: (context, index){
        var data = servicesList[index];

        return

          Card(
              elevation: 0,
              child: Column(
                children: [
                  Image.asset(data.images!, fit: BoxFit.contain,height:size.height*0.3 ,),
                  Text(data.title!),
                  AnimatedTextKit(
                    animatedTexts: data.platform!.map((e){
                      return TypewriterAnimatedText(e.toString(),
                          speed: const Duration(milliseconds: 100)


                      );
                    }).toList(),
                    repeatForever: true,
                  )
                ],
              )
            );


      }),
    );
  }
}
