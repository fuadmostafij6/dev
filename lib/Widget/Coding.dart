


import 'package:flutter/material.dart';

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
                children: const [
                  CustomButton(text: 'Dart',),
                  CustomButton(text: 'JavaScripts',),
                  CustomButton(text: 'Python Basic',),
                  CustomButton(text: 'Django',),
                  CustomButton(text: 'C',),
                  CustomButton(text: 'C++',),
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