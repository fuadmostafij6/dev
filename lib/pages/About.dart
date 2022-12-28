
import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import '../colors_const.dart';

enum ButtonState{init, loading, done}

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

ButtonState state = ButtonState.init;
downloadFile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = "CV";
  anchorElement.click();
}
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isStretched = state == ButtonState.init;

    final isDone = state == ButtonState.done;
    return  SingleChildScrollView(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: ColorConst.lightWidgetColor,
            height: size.height*0.55,
            width: size.width-20,

            child: ModelViewer(
             // poster: 'assets/images/flutter_dash.mtl',
              posterColor: Colors.blue,
              src: 'https://raw.githubusercontent.com/fuadmostafij6/dev/main/assets/images/flutter.glb',
              alt: "Flutter 3D",
              ar: true,
              autoRotate: true,
              cameraControls: true,
            ),
          ),
          Container(
            color: ColorConst.lightWidgetColor,
            height: size.height*0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Column(
                    children:   [
                      const Text("I am a Flutter Developer from Bangladesh"),
                      const Text("Working with Flutter since 2021"),
                      Text.rich( TextSpan(
                          text: "Now I'm work With\n",
                          children: [
                            TextSpan(
                              text: "EXPERT IT SOLUTION\n",
                              style:  TextStyle(color: ColorConst.secondaryColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () { launch('https://www.expertitbd.com/');
                                },
                            ),
                            const TextSpan(
                                text: "01/2022 - Present\n"
                            ),

                            TextSpan(
                              text: "Trainer at QUEUE SOLUTION BD\n",
                              style:  TextStyle(color: ColorConst.secondaryColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () { launch('https://queuesolutionsbd.com/');
                                },
                            ),
                            const TextSpan(
                                text: "11/2022 - Present"
                            ),


                          ]
                      ), ),

                    


                    ],
                  ),
                ),


                //const Image(image: AssetImage("images/flutter.gif"), height: 350, width: 250,),
                // Image(image: AssetImage("${assetPath}flutter.gif"))
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: Container(
              width:size.width*0.2 ,
              height: 50,
              child:
              isStretched?
              OutlinedButton(

                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2, color: ColorConst.secondaryColor)
                ),
                onPressed: ()async {

                setState(()=>state=ButtonState.loading);
                print(state.name);
                await Future.delayed(Duration(seconds: 3));
                downloadFile("./assets/images/mobile.png");
                setState(()=>state=ButtonState.done);
                await Future.delayed(Duration(seconds: 3));
                setState(()=>state=ButtonState.init);
                print(state.name);

              }, child:

              FittedBox (
                child:
                
                Text("Download CV",


                  style: TextStyle(
                      fontSize: 20,
                      color: ColorConst.secondaryColor,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

              ): Container(
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color:isDone? Colors.green:ColorConst.secondaryColor,

                ),
                child:  Center(
                  child:isDone? const Icon(
                    Icons.done, size: 52,
                    color: Colors.white,

                  ):const CircularProgressIndicator(color: Colors.white,),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
