import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget customContainer(String image, String text, Color color, String pgNum) {
    return Container(
      color: color,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(height: 100),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Image.asset(image),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.only(bottom: 20, right: 20),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width,
            child: Text(
              pgNum,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: LiquidSwipe(
            pages: [
              customContainer(
                  'images/wear_mask.png',
                  'Wear your mask to stop the spread the virus',
                  Colors.cyan,
                  '01'),
              customContainer(
                  'images/wash_hands.png',
                  'Wash your hands with soap frequently',
                  Colors.pinkAccent,
                  '02'),
              customContainer(
                  'images/physical_distancing.png',
                  'Maintain physical distancing all the time',
                  Colors.orangeAccent,
                  '03'),
            ],
          ),
        ),
      ),
    );
  }
}
