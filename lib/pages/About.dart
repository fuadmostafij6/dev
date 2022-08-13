
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import '../colors_const.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {


  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child:
      Column(
        children: [
          Container(
            color: ColorConst.lightWidgetColor,
            height: 350,
            width: MediaQuery.of(context).size.width-20,
            child: ModelViewer(
              poster: 'assets/images/flutter_dash.mtl',
              posterColor: Colors.blue,
              src: 'assets/images/flutter.glb',
              alt: "A 3D model of an astronaut",
              ar: true,
              autoRotate: true,
              cameraControls: true,
            ),
          ),
          Container(
            color: ColorConst.lightWidgetColor,
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
                                text: "07/2022 - Present"
                            ),


                          ]
                      ), ),

                      SizedBox(
                        height: 20.0,
                      )

                    ],
                  ),
                ),


                //const Image(image: AssetImage("images/flutter.gif"), height: 350, width: 250,),
                // Image(image: AssetImage("${assetPath}flutter.gif"))
              ],
            ),
          ),

        ],
      )
    );
  }
}
