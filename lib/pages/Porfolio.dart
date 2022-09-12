
import 'package:flutter/material.dart';

import '../Model/portfolioModel.dart';
class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
List<PortFolioModel> lists = [];
  @override
 void initState(){
    lists = [
     PortFolioModel("mftvPlayer", "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/img.png", ["https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss1.png",


       "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss2.png",
     "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss3.png",
     "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss4.png",
     "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss5.png",
     "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss6.png",
     "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss7.png"], "Mftv Player app doesn't provide any source of TV channels! you need to add the playlist from your IPTV provide to be able to watch TV channels"),
     PortFolioModel("BongoFlixBd", "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/logo.png", ["https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/one.png",
     "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/two.png",
       "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/three.png",
       "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/four.png"
     ], "A NetflixClone App"),

    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return GridView(


      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 5.0,
    ),

      children: lists.map((e) {
        return Card(
          color: Colors.white60,

          child: Column(
            children: [
              Expanded(child: Image(image: NetworkImage(e.thumbNail!))),
              
              Expanded(child: Text(e.title!)),

            ],

          ),

        );

      }).toList(),



    );
  }
}
