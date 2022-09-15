import 'package:flutter/material.dart';
import 'package:foto_gallery/app/ui/pages/foto_gallery_page.dart';
import 'package:transparent_image/transparent_image.dart';

import '../Model/portfolioModel.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<PortFolioModel> lists = [];
  int listIndex = 0;
  @override
  void initState() {
    lists = [
      PortFolioModel(
          "mftvPlayer",
          "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/img.png",
          [
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss1.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss2.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss3.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss4.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss5.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss6.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/mftv/ss7.png"
          ],
          "Mftv Player app doesn't provide any source of TV channels! you need to add the playlist from your IPTV provide to be able to watch TV channels"),
      PortFolioModel(
          "BongoFlixBd",
          "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/logo.png",
          [
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/one.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/two.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/three.png",
            "https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/netflix/four.png"
          ],
          "A NetflixClone App"),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        GridView.builder(
          itemCount: lists.length,
          primary: false,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            var data = lists[index];
            return Card(
              color: Colors.white60,
              child: InkWell(
                onTap: (){
                  setState((){

                    listIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: data.thumbNail!, height: 100,),
                      Text(data.title!),
                      Text(data.shortDetails!)
                    ],
                  ),
                ),

              ),
            );
          },

        ),
const SizedBox(height: 20.0,),
       GridView.builder(
           itemCount: lists[listIndex].images!.length,
           primary: false,
           shrinkWrap: true,
           gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 3,
         crossAxisSpacing: 5.0,
         mainAxisSpacing: 3.0,
       ), itemBuilder: (context, index){
            // var data = lists[listIndex].images![index];
           return  FotoGallery(
               image: lists[listIndex].images![index],
               imageList: lists[listIndex].images!,
               imgurl: lists[listIndex].images![index],
               index: index,
               fit: BoxFit.cover,
             );


    })



      ],
    );
  }
}
