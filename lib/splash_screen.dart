import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  double? height;
  double? width;

  String image;
  Color backgroungColor;
  Color circularProgressIndicatorColor;
  String primaryText;
  Color primaryTextColor;
  String secondaryText;
  Color secondaryTextColor;

  SplashScreen(
      {required this.image,
      required this.backgroungColor,
      required this.circularProgressIndicatorColor,
      required this.primaryText,
      required this.primaryTextColor,
      required this.secondaryText,
      required this.secondaryTextColor});
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: backgroungColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, height! * 0.02, 0, height! * 0.52),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: height! * 0.05,
          ),
          CircularProgressIndicator(
            color: circularProgressIndicatorColor,
          ),
          SizedBox(
            height: height! * 0.1,
          ),
          Text(primaryText,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: primaryTextColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: height! * 0.05,
          ),
          Text(
            secondaryText,
            style: TextStyle(
                decoration: TextDecoration.none,
                color: secondaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
