
import 'package:flutter/material.dart';
class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {



  @override
  Widget build(BuildContext context) {
    return GridView(


      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 5,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 5.0,
    ),



    );
  }
}
