import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors_const.dart';
import 'custom_button.dart';

AspectRatio codingBuilder() {
  return AspectRatio(
    aspectRatio: 1.23,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          color: ColorConst.lightBgColor,
          child: Column(
            children: [
              const Spacer(),
              const Text("Coding"),
              const Spacer(),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  CustomButton(
                      text: 'Dart',
                      clickCallback: () {
                        launch('https://dart.dev/');
                      }),
                  CustomButton(
                    text: 'JavaScripts',
                    clickCallback: () {
                      launch('https://www.javascript.com/');
                    },
                  ),
                  CustomButton(
                    text: 'Python Basic',
                    clickCallback: () {
                      launch('https://www.python.org/');
                    },
                  ),
                  CustomButton(
                    text: 'Django',
                    clickCallback: () {
                      launch('https://www.djangoproject.com/');
                    },
                  ),
                  CustomButton(
                    text: 'C',
                    clickCallback: () {
                      launch('https://www.cprogramming.com/');
                    },
                  ),
                  CustomButton(
                    text: 'C++',
                    clickCallback: () {
                      launch('https://www.cprogramming.com/');
                    },
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    ),
  );
}
