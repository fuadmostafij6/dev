

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

    ServicesModel("Tv Application (Android/iOs)", "assets/images/tv.png", ""),
    ServicesModel("Mobile Application (Android/iOs)", "assets/images/mobile.png", ""),
    ServicesModel("Web App", "assets/images/web.png", ""),
    ServicesModel("AR App", "assets/images/mobile.png", "shortDesc"),

  ];
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: GridView.builder(  physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: servicesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 35.0,
            mainAxisSpacing: 25.0,

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
                child: Image.asset(data.images!, fit: BoxFit.contain,),
              ),

                back: Text(data.title!),
            ),
          );


      }),
    );
  }
}
