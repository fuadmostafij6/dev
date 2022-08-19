

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/Model/servicesModel.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List <GlobalKey<FlipCardState>> cardKey = [GlobalKey<FlipCardState>()];
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,

          ), itemBuilder: (context, index){
        var data = servicesList[index];
        for(int i =0; i<servicesList.length; i++){
          cardKey.add(GlobalKey<FlipCardState>());
        }

        return

          MouseRegion(
            cursor: SystemMouseCursors.click,
            onHover: (value){
              print(value);
              cardKey[index].currentState!.toggleCard();
            },
            onExit:(value){
              print(value);
              cardKey[index].currentState!.toggleCard();
            } ,

            child: FlipCard(
              key:  cardKey[index],
              fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              front:   Card(
                elevation: 0,
                child: Column(
                  children: [
                    Image.asset(data.images!, fit: BoxFit.contain,height:size.height*0.3 ,),
                    Text(data.title!),
                  ],
                )
              ),

                back: Card(
                  elevation: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Expanded(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: data.platform!.map((e){
                            return FadeAnimatedText(
                              e,
                              textStyle: const TextStyle(fontSize: 60.0,),
                            );

                          }

                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          );


      }),
    );
  }
}
